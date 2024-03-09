INSERT INTO Genero(nomeGenero) VALUES
('Ação'),
('Fantasia'),
('Aventura'),
('Ficção científica'),
('Comédia');

INSERT INTO Filme(idFilme, nomeFilme, sinopse, duracao, anoEstreia) VALUES
(1, 'Jurassic World: Domínio', 'Em junho, vivencie o final épico da era jurássica, com duas gerações se unindo pela primeira vez. Chris Pratt e Bryce Dallas Howard são acompanhados pela vencedora do Oscar Laura Dern, Jeff Goldblum e Sam Neill em Jurassic World Domínio, uma nova aventura ousada, atemporal e de tirar o fôlego que abrange o mundo.Do arquiteto e diretor de Jurassic World, Colin Trevorrow, Jurassic World Domínio acontece quatro anos após a destruição da Isla Nublar. Os dinossauros agora vivem - e caçam - ao lado de humanos em todo o mundo. Esse frágil equilíbrio remodelará o futuro e determinará, de uma vez por todas, se os seres humanos continuarão sendo os principais predadores em um planeta que agora compartilham com as criaturas mais temíveis da história.', 138, '2022/06/02'),
(2, 'Doutor Estranho no Multiverso da Loucura', 'O aguardado filme trata da jornada do Doutor Estranho rumo ao desconhecido. Além de receber ajuda de novos aliados místicos e outros já conhecidos do público, o personagem atravessa as realidades alternativas incompreensíveis e perigosas do Multiverso para enfrentar um novo e misterioso adversário.', 126, '2022/05/05'),
(3, 'Morbius', 'O bioquímico Michael Morbius tenta curar-se de uma doença rara no sangue mas, sem perceber, ele fica infectado com uma forma de vampirismo.', 84, '2022/03/31'),
(4, 'Animais Fantásticos: Os Segredos de Dumbledore', 'O professor Alvo Dumbledore (Jude Law) sabe que o poderoso mago das trevas Gellert Grindelwald (Mads Mikkelsen) está se movimentando para assumir o controle do mundo mágico. Incapaz de detê-lo sozinho, ele pede ao magizoologista Newt Scamander (Eddie Redmayne) para liderar uma intrépida equipe de bruxos, bruxas e um corajoso padeiro trouxa em uma missão perigosa, em que eles encontram velhos e novos animais fantásticos e entram em conflito com a crescente legião de seguidores de Grindelwald. Mas com tantas ameaças, quanto tempo poderá Dumbledore permanecer à margem do embate?', 132, '2022/04/14'),
(5, 'Minions 2: A Origem de Gru', 'Nos anos 1970, o jovem Gru tenta entrar para um time de supervilões, mas a entrevista é desastrosa e ele e seus minions acabam fugindo do grupo de mal-feitores.', 78, '2022/05/30');

INSERT INTO GeneroFilme(idFilme, idGenero) VALUES
(1, 3),
(2, 1),
(3, 4),
(4, 2),
(5, 5);

INSERT INTO Pessoa(idPessoa, nomePessoa) VALUES
(2, 'Benedict Cumberbatch');

UPDATE Pessoa SET
	nomePessoa = 'Elizabeth Olsen'
WHERE idPessoa = 2;

SET FOREIGN_KEY_CHECKS = 0;

DELETE FROM Filme WHERE idFilme = 1;

SET FOREIGN_KEY_CHECKS=1;