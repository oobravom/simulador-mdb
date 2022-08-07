USE simulador;

CREATE TABLE `enunciado` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `texto` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `fragmento_codigo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigo` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `SEQUENCE` (
`SEQ_NAME` varchar(50) NOT NULL,
`SEQ_COUNT` int(19),
PRIMARY KEY (`SEQ_NAME`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO `SEQUENCE` (SEQ_NAME,SEQ_COUNT) VALUES
	 ('SEQ_GEN',0),
	 ('SEQ_GEN_IDENTITY',10);

INSERT INTO fragmento_codigo (codigo) VALUES
	 ('		IntStream secuenciaEnteros = of(1, 3, 5);
		int promedio = secuenciaEnteros.filter(i -> i % 2 == 0).average(); // 1
		System.out.println(promedio);

		int suma = secuenciaEnteros.filter(i -> i % 2 != 0).sum();// 2
		System.out.println(suma);

		secuenciaEnteros = of(1, 3, 5, 9);
		int contador = secuenciaEnteros.filter(i -> i % 3 != 0).count();// 3
		System.out.println(contador);'),
	 ('		IntStream numStream = of(1, 3, 5);
		int average = numStream.filter(i -> i % 2 == 0).average(); // 1
		System.out.println(average);

		int sum = numStream.filter(i -> i % 2 != 0).sum();// 2
		System.out.println(sum);

		numStream = of(1, 3, 5, 9);
		int count = numStream.filter(i -> i % 3 != 0).count();// 3
		System.out.println(count);');
		
INSERT INTO enunciado (texto) VALUES
	 ('Dado el siguiente fragmento de código, indique el o los errores con base en las líneas comentadas, en caso de que aplique.'),
	 ('Given the following code fragment, indicate the error(s) based on the commented lines, if applicable. '),
	 ('Línea 1'),
	 ('Line 1'),
	 ('Línea 2'),
	 ('Line 2'),
	 ('Línea 3'),
	 ('Line 3'),
	 ('Ninguna de las anteriores'),
	 ('None of the above');