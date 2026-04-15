-- ● Políticas de Senhas: 
-- * Ative a política de senhas fortes no MySQL e aplique-a ao usuário usuario_local.

-- Ativando o componente de validação (se ainda não estiver ativo)
INSTALL COMPONENT 'file://component_validate_password';

-- Aplicando ao usuário (a senha já deve seguir a política para o comando funcionar)
ALTER USER 'usuario_local'@'localhost' PASSWORD EXPIRE;