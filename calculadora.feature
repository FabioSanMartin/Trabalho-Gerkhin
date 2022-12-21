            #language: pt

            Funcionalidade: Calculadora
            Como não sei fazer conta de cabeça
            Quero usar a calculadorado sistema
            Para somar dois números

            Cenário: Soma de 2 números
            Dado que eu acese a calculadora
            Quando eu somar 2+2
            Então o resultado deve ser 4

            Esquema do Cenário: Soma de 2 números
            Dado que eu acese a calculadora
            Quando eu somar <valor 1> e <valor 2>
            Então o resultado deve ser <resultado>

            Exemplos:
            | valor 1 | valor 2 | resultado |
            | "2"     | "2"     | "4"       |
            | "2"     | "1"     | "3"       |
            | "3"     | "2"     | "5"       |
            | "3"     | "3"     | "6"       |
            | "21"    | "12"    | "33"      |
            | "19"    | "8"     | "27"      |
            | "100"   | "51"    | "151"     |
            | "7"     | "13"    | "20"      |
            | "50"    | "63"    | 113       |
            | "7"     | "8"     | "15"      |
            | "6"     | "11"    | "17"      |
            | "15"    | "39"    | "44"      |
            | "37"    | "11"    | "48"      |
            | "16"    | "13"    | "29"      |
            | "19"    | "3"     | "22"      |
            | "210"   | "8"     | "218"     |
            | "90"    | "1"     | "91"      |
            | "5"     | "6"     | "11"      |
            | "9"     | "4"     | "13"      |
            | "16"    | "6"     | "22"      |
            | "6"     | "1"     | "1"       |