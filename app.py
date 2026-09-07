from flask import Flask, render_template, request, redirect, session
from database import conectar_banco

app = Flask(__name__)

# Chave utilizada pelo Flask para controlar as sessões
app.secret_key = "chave-secreta-desenvolvimento"


# ==========================================
# PÁGINA INICIAL / LOGIN
# ==========================================

@app.route("/")
def inicio():
    return render_template("login.html")


# ==========================================
# PROCESSAMENTO DO LOGIN
# ==========================================

@app.route("/login", methods=["POST"])
def login():

    # Recebe os dados preenchidos no formulário
    email = request.form["email"]
    senha = request.form["senha"]

    # Abre conexão com o banco de dados
    conexao = conectar_banco()

    # Permite acessar os resultados pelo nome das colunas
    cursor = conexao.cursor(dictionary=True)

    # Consulta o usuário no banco
    comando = """
        SELECT *
        FROM usuarios
        WHERE email = %s
        AND senha = %s
    """

    cursor.execute(comando, (email, senha))

    # Pega o usuário encontrado
    usuario = cursor.fetchone()

    # Fecha cursor e conexão
    cursor.close()
    conexao.close()

    # Se o usuário existir
    if usuario:

        # Guarda informações do usuário na sessão
        session["usuario_id"] = usuario["id"]
        session["usuario_nome"] = usuario["nome"]
        session["tipo_usuario"] = usuario["tipo_usuario"]
        session["condominio_id"] = usuario["condominio_id"]

        # Envia o usuário para o dashboard do morador
        return redirect("/dashboard/morador")

    # Caso o usuário não exista
    return "E-mail ou senha incorretos."


# ==========================================
# DASHBOARD DO MORADOR
# ==========================================

@app.route("/dashboard/morador")
def dashboard_morador():

    # Verifica se existe um usuário logado
    if "usuario_id" not in session:
        return redirect("/")

    # Abre o dashboard e envia o nome do usuário
    return render_template(
        "dashboard_morador.html",
        nome_usuario=session["usuario_nome"]
    )


# ==========================================
# TESTE DE CONEXÃO COM O BANCO
# ==========================================

@app.route("/teste-banco")
def teste_banco():

    conexao = conectar_banco()

    if conexao.is_connected():
        conexao.close()
        return "Conexão com o MySQL realizada com sucesso!"

    return "Não foi possível conectar ao MySQL."


# ==========================================
# EXECUÇÃO DO SISTEMA
# ==========================================

if __name__ == "__main__":
    app.run(debug=True)