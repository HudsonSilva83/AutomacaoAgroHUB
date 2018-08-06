#language: pt
Funcionalidade: Login
    Para que somente eu possa ver as minhas tarefas
    Sendo um usuário cadastrado
    Posso logar no sistema 
     
    Contexto: Formulário de Login
     Dado que eu acessei o formulário de login    
    
   @login @logout
    Cenario: Logar do usuário
             
       Quando faço com login e-mail "hu.psilva@gmail.com" e senha "hpereira83"
       Então sou autenticado com sucesso
       E sou redirecionado para o painel de tarefas com a mensagem "Olá, Hudson"
           
    Esquema do Cenário: Tentativa de logar
        
        Quando faço com login e-mail "<email>" e senha "<senha>"
        Então devo ver a mensagem de alerta "<saída>"
        
        Exemplos:
        | email               | senha      | saída                       |
        | hu.psilva@gmail.com | 1234lll6   | Senha inválida.             |
        | papa@gmail.com      | hpereira83 | Usuário não cadastrado.     |
        | papa@@@gmail.com    | hpereira83 | Email incorreto ou ausente. |
        |                     | hpereira83 | Email incorreto ou ausente. |
        | hu.psilva@gmail.com |            | Senha ausente.              |
      