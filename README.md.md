# 🚀 Projeto 6 --- Automatização de Tarefas no SQL Server

## 📌 Sobre o Projeto

Este projeto demonstra como automatizar tarefas administrativas no
Microsoft SQL Server utilizando recursos como Jobs, Alertas, Operadores
e envio de e-mails.

O objetivo é simular atividades comuns da rotina de um DBA (Database
Administrator), automatizando processos de manutenção e monitoramento do
servidor.

------------------------------------------------------------------------

# 🎯 Objetivos

-   Automatizar tarefas administrativas no SQL Server
-   Criar Jobs agendados
-   Implementar alertas automáticos
-   Configurar notificações por e-mail
-   Monitorar erros críticos do servidor

------------------------------------------------------------------------

# 🧰 Tecnologias Utilizadas

-   Microsoft SQL Server
-   SQL Server Agent
-   SQL Server Management Studio (SSMS)
-   Transact-SQL (T-SQL)

------------------------------------------------------------------------

# 📂 Estrutura do Projeto

Projeto6-Automatizacao-SQLServer │ ├── scripts │ ├── jobs.sql │ ├──
alerta_log_cheio.sql │ ├── alertas_importantes.sql │ └──
database_mail.sql │ └── README.md

------------------------------------------------------------------------

# ⚙️ Funcionalidades Implementadas

## 📅 Criação de JOBs

O projeto demonstra como criar Jobs no SQL Server Agent para executar
tarefas automatizadas.

Os Jobs podem executar diferentes tipos de tarefas, como:

-   Scripts T-SQL
-   Scripts PowerShell
-   Pacotes SSIS
-   Programas executáveis
-   Scripts XMLA

Aplicações comuns:

-   Automação de backups
-   Execução de rotinas administrativas
-   Processos de manutenção do banco

------------------------------------------------------------------------

# 💾 Automação de Backup

Exemplo de backup automatizado:

``` sql
BACKUP DATABASE master 
TO DISK = 'C:\Backup\master.bak'
WITH COMPRESSION
```

------------------------------------------------------------------------

# 🧹 Limpeza de Backups Antigos

Para evitar acúmulo de arquivos antigos:

``` sql
EXEC master.dbo.xp_delete_file
```

Remove backups com mais de 4 semanas.

------------------------------------------------------------------------

# 📧 Envio de E-mails

Exemplo usando Database Mail:

``` sql
EXEC msdb.dbo.sp_send_dbmail
```

------------------------------------------------------------------------

# 🚨 Alertas Monitorados

  Erro   Descrição
  ------ -----------------------
  824    Corrupção de página
  9002   Transaction Log cheio
  9001   Log indisponível
  708    Memória virtual baixa

------------------------------------------------------------------------

# 👨‍💻 Operadores

Criação do operador DBA:

``` sql
EXEC msdb.dbo.sp_add_operator
```

------------------------------------------------------------------------

# 💀 Monitoramento de Severidade

-   Severidade 19
-   Severidade 20
-   Severidade 21
-   Severidade 22
-   Severidade 23
-   Severidade 24
-   Severidade 25

------------------------------------------------------------------------

# 📊 Cenário de Teste

Banco de teste:

HandsOn

Tabela populada para provocar crescimento do Transaction Log e disparar
alerta.

------------------------------------------------------------------------

# 🧠 Habilidades Demonstradas

-   Automação de tarefas
-   Administração do SQL Server Agent
-   Monitoramento de erros críticos
-   Configuração de alertas
-   Notificações automáticas
-   Manutenção de banco de dados

------------------------------------------------------------------------

# 🚀 Melhorias Futuras

-   Backup diferencial automático
-   Backup de log
-   Monitoramento de deadlocks
-   Monitoramento de CPU e memória
-   Rebuild automático de índices

------------------------------------------------------------------------

# 👨‍💻 Autor

Andrey Andrade
