#!/bin/bash

# Caminho do repositório local
REPO_DIR="/c/Users/andre.manoelino/Downloads/UDEMY"

# Entrar na pasta do repositório
cd "$REPO_DIR" || { echo "Pasta não encontrada"; exit 1; }

# Verifica se há alterações
if [ -n "$(git status --porcelain)" ]; then
    echo "🔄 Alterações encontradas, adicionando arquivos..."
    git add .

    # Commit automático com data e hora
    MSG="Commit automático em $(date '+%d/%m/%Y %H:%M:%S')"
    echo "📝 Criando commit: $MSG"
    git commit -m "$MSG"

    # Push para o GitHub
    echo "⬆️ Enviando para o GitHub..."
    git push origin master

    echo "✅ Commit e push concluídos com sucesso!"
else
    echo "✅ Nenhuma alteração para enviar."
fi
