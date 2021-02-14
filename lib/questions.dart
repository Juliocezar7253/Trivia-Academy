  class Questions {

    String questionText;
    String opt1;
    String opt2;
    String opt3;
    String opt4;
    int answer;

    Questions(this.questionText, this.opt1, this.opt2, this.opt3, this.opt4, this.answer);

    static List<Questions> getQuestionsList(){

      List<Questions> questions = [];

      questions.add(
        Questions(
        "Em que ano foi lançado o CS:GO?", 
        "2012",
        "2013",
        "2005",
        "2010",
        1
      ));

      questions.add(
        Questions(
        "Qual é a skin mais cara de CS:GO?",
        "AWP | DRAGON LORE",
        "KARAMBIT | CASE HARDENED",
        "M4A4 | HOWL",
        "AWP | DRAGON LORE SOUVENIR",
        3));

        questions.add(
        Questions(
        "Quantos majors a Astralis já venceu?",
        "2",
        "4",
        "0",
        "5",
        2));

        questions.add(
        Questions(
        "Qual o código da C4?",
        "7355608",
        "7358608",
        "7305600",
        "7325607",
        1));

        questions.add(
        Questions(
        "Qual a cidade que o mapa Cache está representando?",
        "Kiev",
        "Chernobyl",
        "Pripyat",
        "Mykolaiv",
        3));
        
        questions.add(
        Questions(
        "Qual o mapa mais jogado de CS:GO?",
        "Dust 2",
        "Cache",
        "Dust 1",
        "Mirage",
        4));
        

      return questions;
    }


  }