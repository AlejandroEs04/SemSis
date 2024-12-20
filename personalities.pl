% Preguntas para el eje Extrovertido-Introvertido (EI)
question(1, "Prefieres trabajar solo o en equipo?", 'EI', 1, -1).
question(2, "Te sientes recargado despues de socializar con otras personas?", 'EI', 1, -1).
question(3, "Disfrutas hablar con extranos en eventos sociales?", 'EI', 1, -1).
question(4, "Prefieres reflexionar antes de hablar?", 'EI', -1, 1).
question(5, "Sientes que necesitas tiempo a solas para recuperar energia?", 'EI', -1, 1).
question(6, "Tiendes a iniciar conversaciones con desconocidos?", 'EI', 1, -1).
question(7, "Prefieres reuniones pequenas en lugar de eventos grandes?", 'EI', -1, 1).
question(8, "Te gusta ser el centro de atencion?", 'EI', 1, -1).
question(9, "Encuentras agotador estar con personas por mucho tiempo?", 'EI', -1, 1).
question(10, "Disfrutas compartir tus ideas con otras personas?", 'EI', 1, -1).

% Preguntas para el eje Sensacion-Intuicion (SN)
question(11, "Prefieres enfocarte en hechos concretos?", 'SN', -1, 1).
question(12, "Te sientes comodo imaginando posibilidades futuras?", 'SN', 1, -1).
question(13, "Confias mas en tu experiencia que en tu intuicion?", 'SN', -1, 1).
question(14, "Te gusta explorar ideas abstractas?", 'SN', 1, -1).
question(15, "Prefieres detalles especificos sobre informacion general?", 'SN', -1, 1).
question(16, "Te interesa mas el significado detras de las cosas?", 'SN', 1, -1).
question(17, "Te enfocas mas en el presente que en el futuro?", 'SN', -1, 1).
question(18, "Disfrutas imaginar como podrian ser las cosas?", 'SN', 1, -1).
question(19, "Tiendes a ser practico en lugar de idealista?", 'SN', -1, 1).
question(20, "Prefieres trabajar con conceptos abstractos?", 'SN', 1, -1).

% Preguntas para el eje Pensamiento-Sentimiento (TF)
question(21, "Tomas decisiones basandote en logica?", 'TF', 1, -1).
question(22, "Prefieres considerar los sentimientos de los demas al tomar decisiones?", 'TF', -1, 1).
question(23, "Te sientes comodo siendo objetivo en discusiones?", 'TF', 1, -1).
question(24, "Tiendes a evitar herir los sentimientos de otros?", 'TF', -1, 1).
question(25, "Piensas que la justicia es mas importante que la empatia?", 'TF', 1, -1).
question(26, "Tiendes a considerar las emociones al tomar decisiones?", 'TF', -1, 1).
question(27, "Prefieres resolver problemas basandote en datos objetivos?", 'TF', 1, -1).
question(28, "Te preocupa como las decisiones afectan a las personas?", 'TF', -1, 1).
question(29, "Te resulta facil separar emociones de hechos?", 'TF', 1, -1).
question(30, "Piensas que es importante considerar las intenciones detras de las acciones?", 'TF', -1, 1).

% Preguntas para el eje Juicio-Percepcion (JP)
question(31, "Prefieres planificar tus actividades con anticipacion?", 'JP', 1, -1).
question(32, "Te sientes comodo improvisando?", 'JP', -1, 1).
question(33, "Prefieres completar tareas antes de relajarte?", 'JP', 1, -1).
question(34, "Tiendes a mantener tus opciones abiertas?", 'JP', -1, 1).
question(35, "Disfrutas organizar horarios detallados?", 'JP', 1, -1).
question(36, "Prefieres ser espontaneo en lugar de planificado?", 'JP', -1, 1).
question(37, "Te sientes incomodo con la incertidumbre?", 'JP', 1, -1).
question(38, "Te gusta explorar diferentes posibilidades antes de decidir?", 'JP', -1, 1).
question(39, "Tiendes a cumplir con plazos estrictos?", 'JP', 1, -1).
question(40, "Disfrutas trabajar en un ambiente flexible?", 'JP', -1, 1).

% Preguntas generales combinadas para equilibrio de puntuacion
question(41, "Prefieres interactuar mas con ideas que con personas?", 'EI', 1, -1).
question(42, "Tiendes a confiar en tu intuicion sobre los detalles?", 'SN', 1, -1).
question(43, "Te importa mas tener la razon que evitar conflictos?", 'TF', 1, -1).
question(44, "Prefieres una estructura definida en tu vida diaria?", 'JP', 1, -1).
question(45, "Te resulta facil pensar en ideas innovadoras?", 'SN', 1, -1).
question(46, "Prefieres analizar antes de actuar?", 'TF', 1, -1).
question(47, "Tiendes a sentirte mas comodo siguiendo un plan?", 'JP', 1, -1).
question(48, "Disfrutas liderar conversaciones grupales?", 'EI', 1, -1).
question(49, "Te gusta encontrar patrones en situaciones complejas?", 'SN', 1, -1).
question(50, "Prefieres colaborar con otros en lugar de trabajar solo?", 'EI', 1, -1).


% Determinar personalidad basado en puntajes
determine_mbti(EI_Score, SN_Score, TF_Score, JP_Score, Personality) :-
    (EI_Score > 0 -> E = 'E'; E = 'I'),
    (SN_Score > 0 -> S = 'S'; S = 'N'),
    (TF_Score > 0 -> T = 'T'; T = 'F'),
    (JP_Score > 0 -> J = 'J'; J = 'P'),
    atom_concat(E, S, ES),
    atom_concat(ES, T, EST),
    atom_concat(EST, J, Personality).

% Afinidades y conflictos
high_affinity('ISTJ', ['ENFP', 'ESTJ']).
low_affinity('ISTJ', ['ENTP']).

high_affinity('ISFJ', ['ESFP', 'ESTP']).
low_affinity('ISFJ', ['ENTP']).

high_affinity('INFJ', ['ENFP', 'INFP']).
low_affinity('INFJ', ['ESTJ', 'ESTP']).

high_affinity('INTJ', ['ENTP', 'INFJ']).
low_affinity('INTJ', ['ESFP', 'ESTP']).

high_affinity('ISTP', ['ESTJ', 'ISTJ']).
low_affinity('ISTP', ['ENFJ', 'ESFJ']).

high_affinity('ISFP', ['ESFJ', 'ENFP']).
low_affinity('ISFP', ['ENTJ', 'INTJ']).

high_affinity('INFP', ['ENFJ', 'INFJ']).
low_affinity('INFP', ['ESTJ', 'ESTP']).

high_affinity('INTP', ['ENTJ', 'INFP']).
low_affinity('INTP', ['ESFJ', 'ENFJ']).

high_affinity('ESTP', ['ISFJ', 'ESFP']).
low_affinity('ESTP', ['INFJ', 'INTJ']).

high_affinity('ESFP', ['ISFJ', 'ESFJ']).
low_affinity('ESFP', ['INTJ', 'INTP']).

high_affinity('ENFP', ['INFJ', 'INFP']).
low_affinity('ENFP', ['ISTJ', 'INTJ']).

high_affinity('ENTP', ['INTJ', 'ENFP']).
low_affinity('ENTP', ['ISFJ', 'ISTJ']).

high_affinity('ESTJ', ['ISTP', 'ISTJ']).
low_affinity('ESTJ', ['INFP', 'INTP']).

high_affinity('ESFJ', ['ISFP', 'ENFJ']).
low_affinity('ESFJ', ['INTP', 'ISTP']).

high_affinity('ENFJ', ['INFP', 'ESFJ']).
low_affinity('ENFJ', ['ISTP', 'ISTJ']).

high_affinity('ENTJ', ['INTP', 'INTJ']).
low_affinity('ENTJ', ['ISFP', 'ISFJ']).

% Consultar personalidades compatibles
compatible(Personality, CompatibleList) :- high_affinity(Personality, CompatibleList).

% Consultar personalidades incompatibles
incompatible(Personality, IncompatibleList) :- low_affinity(Personality, IncompatibleList).
