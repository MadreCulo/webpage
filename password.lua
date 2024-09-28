function gerarSenhaAleatoria(str)
    local caracteresPermitidos = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
    local senha = ""
    
    math.randomseed(#str)

    for i = 1, 8 do
        local indice = math.random(1, #caracteresPermitidos)
        senha = senha .. caracteresPermitidos:sub(indice, indice)
    end

    return senha
end

local senha = gerarSenhaAleatoria("minhaStringExemplo")
print("Senha gerada: " .. senha)
