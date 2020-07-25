# Rails Games Review

Bem-vindo ao Rails-Reviews!

Este sistema online está sendo desenvolvido para a disciplina Técnicas de Programação 2 em 2020.

Conceito:
A ideia por tras do nosso trabalho é a de criar um sistema para reviews online de jogos, voltada para video-games.
Neste sistema teremos 2 tipos de notas para os jogos, as notas oficiais e as notas públicas.
Para tal, teremos 2 tipos diferentes de reviews: Oficiais e Públicas.
As reviews oficiais  são criadas por usuários seletos que possuem permissão de moderador, representando a opinião
oficial do site, sendo possível que cada jogo tenha apenas 1 review oficial. Já as reviews públicas podem ser es-
critas por qualquer usuário, e suas notas irão ser agregadas na média publica do jogo.
Portanto, existem 3 tipos de usuário: Comum, moderador e administrador.
As diferenças entre estes tipos são as seguintes:
-Comum: Um usuário comum tem permissão apenas para criar uma review pública de um jogo.
-Moderador: Um moderador não tem permissão para criar reviews públicas, mas pode criar reviews oficiais, e pode
adicionar elementos no banco de dados pelos links disponíveis nos indexes.
-Administrador: O administrador é aquele que tem acesso direto ao banco de dados, sendo o único que pode tornar
usuários comuns em moderadores ou até administradores. Este também pode adicionar elementos no banco e fazer re-
views oficiais.

Desenvolvimento:
Para desenvolver tal sistema estamos utilizando o Ruby on Rails como base.
