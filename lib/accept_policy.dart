import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color.dart' as color;

class AcceptPolicy extends StatefulWidget {
  const AcceptPolicy({Key? key}) : super(key: key);

  @override
  _AcceptPPolicyState createState() => _AcceptPPolicyState();
}

class _AcceptPPolicyState extends State<AcceptPolicy> {
  @override
  Widget build(BuildContext context) {
    var _safePadding = MediaQuery.of(context).padding.top +
        MediaQuery.of(context).padding.bottom;

    return Scaffold(
        backgroundColor: color.AppColor.colorBlue,
        body: SafeArea(
          child: Container(
              child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                margin: const EdgeInsets.only(top: 250),
                decoration:
                    BoxDecoration(color: color.AppColor.pageBackgroundColor),
              ),
              Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.check_circle_outline_outlined,
                              color: Colors.white, size: 30),
                          SizedBox(width: 10),
                          Text("Política e Termos",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white)),
                          SizedBox(height: 5),
                        ],
                      ),
                      SizedBox(height: 5),
                      Container(
                          height: 45,
                          child: Column(
                            children: [
                              Text(
                                  "Leia e concorde com a Política de privacidade e Termos de uso.",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white)),
                            ],
                          )),
                      SizedBox(height: 20),
                      Container(
                          height: MediaQuery.of(context).size.height -
                              _safePadding -
                              268,
                          child: Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                        topRight: Radius.circular(80)),
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 0),
                                          blurRadius: 20,
                                          spreadRadius: 5,
                                          color: Colors.black.withOpacity(0.05))
                                    ]),
                              ),
                              SingleChildScrollView(
                                child: Container(
                                    width: double.maxFinite,
                                    padding: EdgeInsets.all(25),
                                    child: Stack(
                                      children: [
                                        Container(
                                            child: Column(
                                          children: [
                                            Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 200,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/img_privacity.png"),
                                                ))),
                                            SizedBox(height: 20),
                                            Text("Política de Privacidade",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.w900,
                                                    color: Colors.black)),
                                            SizedBox(height: 10),
                                            Text(
                                                "A Política de privacidade está separada em sessões para um melhor entendi-mento. Você pode reler quantas vezes quiser no menu \"Política de privacidade\" na tela do menu principal.",
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black)),
                                            SizedBox(height: 20),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text("Introdução",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      color: color
                                                          .AppColor.colorText)),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                                "Nossa política de privacidade ajudará você a entender quais informações coletamos através do aplicativo Covinfo e como as informações são utilizadas. O aplicativo é gratuito. Este SERVIÇO é fornecido pela Covinfo sem nenhum custo e deve ser usado no estado em que se encontra. Se você optar por usar nosso Serviço, você concorda com a coleta e uso de informações em relação a esta política. As informações pessoais que coletamos são usadas para fornecer e melhorar o serviço. Não usaremos ou compartilharemos suas informações com ninguém, exceto conforme descrito nesta Política de Privacidade. Os termos usados neste Política de Privacidade são diferentes do nossos Termos de Uso, que podem ser acessados em outra área.",
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: color
                                                        .AppColor.colorText)),
                                            SizedBox(height: 20),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text("Do objetivo",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      color: color
                                                          .AppColor.colorText)),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                                "Esta projeto desenvolvido é o Trabalho de Conclusão de Curso do estudante João Paulo Oliveira da Silva, matriculado no curso de Sistemas de Informação da Univerisidade Comunitária da Região de Chapecó (UNOCHAPECÓ) no ano de 2021. O objetivo é a coleta de informações pessoais anonimizados de usuários contaminados pela Covid-19 e utilizadas para pesquisas acadêmicas. As informações coletadas são de responsabilidade exclusiva do estudante. Para mais informações, dúvidas ou sugestões, é possível entrar em contato através do e-mail joao.oliveira@unochapeco.edu.br.",
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: color
                                                        .AppColor.colorText)),
                                            SizedBox(height: 20),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                  "Coleta e uso de informações",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      color: color
                                                          .AppColor.colorText)),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                                "Para uma melhor experiência ao usar nosso Serviço, podemos exigir que você nos forneça certas informações de identificação pessoal, como a localização. As informações que solicitamos serão retidas por nós e usadas conforme descrito nesta política de privacidade. As informações disponibilizadas pelo usuário são armazenadas em um banco de dados na nuvem com acesso exclusivo do responsável deste projeto. As informaões pessoais são anonimizadas, isso significa que não é possível identificar, através de nenhum método, o indivíduo responsável pela informação. As informações solicitadas são: Idade; Gênero; Raça; Tipo sanguíneo; Peso; Altura; Medicamentos e vitamimas; Atividades físicas e; Informaões sobre vacina;",
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: color
                                                        .AppColor.colorText)),
                                            SizedBox(height: 20),
                                            Text(
                                                "Além dessas informações, são solicitadas outras referentes ao diagnóstico: Informações sobre diagnóstico: Fatores de risco; Sintomas e; Sequelas.",
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: color
                                                        .AppColor.colorText)),
                                            SizedBox(height: 20),
                                            Text(
                                                "As informações disponibilizadas podem ser utilizadas pela UNOCHAPECÓ e compartilhadas com pesquisadores e outras intituições. Por serem informações anonimizadas, o usuário não tem o direito de solicitar a remoção, salvo quando envolverem informações de menores de idade ou quando o usuário utilizar informações indevidas.",
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: color
                                                        .AppColor.colorText)),
                                            SizedBox(height: 20),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text("Cookies",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      color: color
                                                          .AppColor.colorText)),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                                "Cookies são arquivos com uma pequena quantidade de dados que normalmente são usados como um identificador único e anônimo. Eles são enviados para o seu navegador a partir do site que você visita e são armazenados na memória interna do seu dispositivo.",
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: color
                                                        .AppColor.colorText)),
                                            SizedBox(height: 20),
                                            Text(
                                                "Este serviço não utiliza cookies explicitamente. No entanto, o aplicativo pode usar código de terceiros e bibliotecas que usam “cookies” para coletar informações e melhorar seus serviços. Você tem a opção de aceitar ou recusar esses cookies e saber quando um cookie está sendo enviado para o seu dispositivo. Se você decidir recusar nossos cookies, pode não conseguir usar algumas partes deste Serviço.",
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: color
                                                        .AppColor.colorText)),
                                            SizedBox(height: 20),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                  "Informações de localização",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      color: color
                                                          .AppColor.colorText)),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                                "Alguns dos serviços podem usar informações de localização transmitidas dos telefones celulares dos usuários. Só usamos essas informações dentro do escopo necessário para o serviço designado.",
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: color
                                                        .AppColor.colorText)),
                                            SizedBox(height: 20),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                  "Informação de dispositivo",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      color: color
                                                          .AppColor.colorText)),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                                "Informamos aos usuários deste serviço que em nenhum momento coletamos informações do seu dispositivo.",
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: color
                                                        .AppColor.colorText)),
                                            SizedBox(height: 20),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                  "Provedores de serviço",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      color: color
                                                          .AppColor.colorText)),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                                "Informamos aos usuários deste serviço que em nenhum caso contratamos empresas tercerizadas com aceso às informações pessoais coletadas.",
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: color
                                                        .AppColor.colorText)),
                                            SizedBox(height: 20),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text("Segurança",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      color: color
                                                          .AppColor.colorText)),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                                "Valorizamos sua confiança em nos fornecer suas informações pessoais anonimizadas, portanto, estamos nos empenhando para usar meios comercialmente aceitáveis de protegê-las. Mas lembre-se que nenhum método de transmissão pela internet, ou método de armazenamento eletrônico é 100% seguro e confiável, e não podemos garantir sua segurança absoluta.",
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: color
                                                        .AppColor.colorText)),
                                            SizedBox(height: 20),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                  "Privacidade infantil",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      color: color
                                                          .AppColor.colorText)),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                                "Este serviço não se dirige a ninguém com idade inferior a 18 anos. Não coletamos intencionalmente informações de identificação pessoal de crianças e adolescentes menores de 18 anos. No caso de descobrirmos que uma criança ou adolescente com menos de 18 anos nos forneceu informações pessoais, as excluímos imediatamente de nossos servidores. Se você é um pai ou responsável e está ciente de que seu filho nos forneceu informações pessoais, entre em contato para que possamos tomar as medidas necessárias.",
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: color
                                                        .AppColor.colorText)),
                                            SizedBox(height: 20),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                  "Mudanças nesta Política de Privacidade",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      color: color
                                                          .AppColor.colorText)),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                                "Podemos atualizar nossa Política de Privacidade de tempos em tempos. Portanto, recomendamos que você reveja esta página periodicamente para verificar quaisquer alterações. Iremos notificá-lo de quaisquer alterações, publicando a nova Política de Privacidade nesta página. Essas alterações entram em vigor imediatamente, após serem publicadas.",
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: color
                                                        .AppColor.colorText)),
                                            SizedBox(height: 20),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                  "Entre em contato conosco",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      color: color
                                                          .AppColor.colorText)),
                                            ),
                                            SizedBox(height: 20),
                                            Text(
                                                "Se você tiver dúvidas ou sugestões sobre nossa Política de Privacidade, não hesite em nos contatar. Informações de contato: Email: joao.oliveira@unochapeco.edu.br.",
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: color
                                                        .AppColor.colorText)),
                                          ],
                                        ))
                                      ],
                                    )),
                              ),
                            ],
                          )),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 0),
                                  blurRadius: 20,
                                  spreadRadius: 0,
                                  color: Colors.black.withOpacity(0.2))
                            ]),
                            width: 300,
                            height: 50,
                            child: TextButton(
                                child: Stack(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Concordar e Prosseguir',
                                        style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      margin: const EdgeInsets.only(right: 5),
                                      child: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        color.AppColor.colorBlue),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ))),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/user');
                                }),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          child: Text(
                            "VOLTAR",
                            style: TextStyle(
                                fontSize: 15, color: color.AppColor.colorBlue),
                          ),
                          onPressed: () => Navigator.pop(context, false),
                        ),
                      )
                    ],
                  )),
            ],
          )),
        ));
  }
}
