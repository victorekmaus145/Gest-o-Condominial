// =====================================================
// CONTROLE DO TEMA
// =====================================================

// Recupera o tema salvo no navegador
const temaSalvo = localStorage.getItem("tema");

// Se o usuário já escolheu o tema escuro,
// adiciona a classe dark-theme ao documento
if (temaSalvo === "escuro") {
    document.body.classList.add("dark-theme");
}


// =====================================================
// BOTÃO DE ALTERAR TEMA
// =====================================================

const themeButton = document.getElementById("theme-button");


// Verifica se o botão existe na página
if (themeButton) {

    themeButton.addEventListener("click", function () {

        // Alterna entre tema claro e escuro
        document.body.classList.toggle("dark-theme");


        // Verifica qual tema está ativo
        const temaEscuro =
            document.body.classList.contains("dark-theme");


        // Salva a escolha no navegador
        if (temaEscuro) {

            localStorage.setItem("tema", "escuro");

            themeButton.textContent = "☀";

        } else {

            localStorage.setItem("tema", "claro");

            themeButton.textContent = "☾";

        }

    });

}