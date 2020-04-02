# Dokumentacja wstępna 

## Filtr wykrywający krawędzie w wideo, w czasie rzeczywistym.

Funkcjonalność projektu:

- Poprawnie negocjuje parametry transmisji interfejsem HDMI.
- Odbiera strumień wideo z innego urządzenia.
- Wykonuje operacje wykrywania krawędzi w odebranym obrazie.
- Nanosi wykryte krawędzie na obraz wyjściowy.
- Nadaje strumień wideo na wyjście HDMI.

Projekt wykonywany na sprzęcie własnym. Na płytce [Nexys Video] z układem FPGA Xilinx Artix-7 XC7A200T-1SBG484C. Płytka jest wyposażona w potrzebne złącza wejście  HDMI i wyjście HDMI.


## Analiza techniczna elementów systemu

### Interfejsy:

- wejście HDMI
- wyjście HDMI

### Algorytmy:

Algorytm Canny'ego do detekcji krawędzi składa się z następujących części.

- Konwersja do biało-czarnego
- Redukcja szumu
- Obliczenie gradientu
- Tłumienie
- Podwójny próg
- Śledzenie krawędzi przez histerezę

#### Redukcja szumu

Polega na rozmyciu obrazu w celu zminimalizowania wpływu szumu na wynik działania algorytmu. Najczęściej stosuje się rozmycie gaussowskie. Polega ono na splocie obrazu z odpowiedzią filtru utworzoną na podstawie rozkładu normalnego.


## Status prac

W powijakach


[Nexys Video]: https://reference.digilentinc.com/reference/programmable-logic/nexys-video/reference-manual?fbclid=IwAR33quUNPj1-sevbe4yfgbg7NtRSuu5IIi0UPC7HwtIQmubVyf3x_IuBAcM