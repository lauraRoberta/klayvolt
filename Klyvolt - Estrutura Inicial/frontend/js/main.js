console.log("Klyvolt iniciado.");

const API_URL = "http://127.0.0.1:8000";

async function testarAPI() {
  try {
    const resposta = await fetch(`${API_URL}/api/status`);
    const dados = await resposta.json();
    console.log("API Klyvolt:", dados);
  } catch (erro) {
    console.log("Backend ainda não está rodando.");
  }
}

testarAPI();
