-- 7. Ativação do Agendador de Eventos 
-- * Ative o agendador de eventos no MySQL e verifique se ele está funcionando corretamente.

SET GLOBAL event_scheduler = ON;

SHOW VARIABLES LIKE 'event_scheduler';