-- ● Criação de Usuários: 
-- Crie dois usuários no MySQL: 
-- * Um usuário chamado usuario_local com acesso apenas local (localhost). 
-- * Um usuário chamado usuario_remoto com acesso remoto (%). 

-- Usuário que só acessa se estiver na mesma máquina do banco
CREATE USER 'usuario_local'@'localhost' IDENTIFIED BY 'SenhaLocal123!';

-- Usuário que pode acessar de qualquer lugar (remoto)
CREATE USER 'usuario_remoto'@'%' IDENTIFIED BY 'SenhaRemota123!';