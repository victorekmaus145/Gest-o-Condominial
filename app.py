from flask import Flask, render_template, request, redirect
from database import conectar_banco

app = Flask(__name__)


@app.route("/")
def inicio():
    return render_template("login.html")


@app.route("/login", methods=["POST"])
def login():

    email = request.form["email"]
    senha = request.form["senha"]

    conexao = conectar_banco()
    cursor = conexao.cursor(dictionary=True)

    comando = """
        SELECT *
        FROM usuarios
        WHERE email = %s
        AND senha = %s
    """

    cursor.execute(comando, (email, senha))

    usuario = cursor.fetchone()

    cursor.close()
    conexao.close()

    if usuario:
        return f"Login realizado! Bem-vindo, {usuario['nome']}."

    return "E-mail ou senha incorretos."


@app.route("/teste-banco")
def teste_banco():
    conexao = conectar_banco()

    if conexao.is_connected():
        return "Conexão com o MySQL realizada com sucesso!"

    return "Não foi possível conectar ao MySQL."


if __name__ == "__main__":
    app.run(debug=True)