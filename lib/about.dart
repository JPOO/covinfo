import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color.dart' as color;

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
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
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.check_circle_outline_outlined,
                                  color: Colors.white, size: 30),
                              SizedBox(width: 10),
                              Text("Sobre a COVID-19",
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
                              child: Text(
                                  "Informações sobre sintomas, prevenção, casos suspeitos, infecção e vacinas da Covid-19.",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white))),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                          height: MediaQuery.of(context).size.height -
                              _safePadding -
                              198,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
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
                                  padding: EdgeInsets.all(25),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text("1. O que é a COVID-19?",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w900,
                                                color:
                                                    color.AppColor.colorText)),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                          "A COVID-19 é a doença infecciosa causada pelo novo coronavírus, identificado pela primeira vez em dezembro de 2019, em Wuhan, na China.",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: color.AppColor.colorText)),
                                      SizedBox(height: 20),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                            "2. Quais são os sintomas de alguém infectado com COVID-19?",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w900,
                                                color:
                                                    color.AppColor.colorText)),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                          "Os sintomas mais comuns da COVID-19 são febre, cansaço e tosse seca. Alguns pacientes podem apresentar dores, congestão nasal, dor de cabeça, conjuntivite, dor de garganta, diarreia, perda de paladar ou olfato, erupção cutânea na pele ou descoloração dos dedos das mãos ou dos pés. Esses sintomas geralmente são leves e começam gradualmente. Algumas pessoas são infectadas, mas apresentam apenas sintomas muito leves.",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: color.AppColor.colorText)),
                                      SizedBox(height: 20),
                                      Text(
                                          "A maioria das pessoas (cerca de 80%) se recupera da doença sem precisar de tratamento hospitalar. Uma em cada seis pessoas infectadas por COVID-19 fica gravemente doente e desenvolve dificuldade de respirar. As pessoas idosas e as que têm outras condições de saúde como pressão alta, problemas cardíacos e do pulmão, diabetes ou câncer, têm maior risco de ficarem gravemente doentes. No entanto, qualquer pessoa pode pegar a COVID-19 e ficar gravemente doente. Pessoas de todas as idades que apresentam febre e/ou tosse associada a dificuldade de respirar/falta de ar, dor/pressão no peito ou perda da fala ou movimento devem procurar atendimento médico imediatamente. Se possível, é recomendável ligar primeiro para a(o) médica(o) ou serviço de saúde, para que a(o) paciente possa ser encaminhada(o) para a clínica certa.",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: color.AppColor.colorText)),
                                      SizedBox(height: 20),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                            "3. O que devo fazer se tiver sintomas de COVID-19 e quando devo procurar atendimento médico?",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w900,
                                                color:
                                                    color.AppColor.colorText)),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                          "Se você tiver sintomas menores, como tosse leve ou febre leve, geralmente não há necessidade de procurar atendimento médico. Você pode optar por ficar em casa, fazer autoisolamento (conforme as orientações das autoridades nacionais) e monitorar seus sintomas.",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: color.AppColor.colorText)),
                                      SizedBox(height: 20),
                                      Text(
                                          "No entanto, se você mora em uma área com malária ou dengue, é importante não ignorar os sintomas da febre. Procure ajuda médica. Ao comparecer ao serviço de saúde, use uma máscara se possível, mantenha pelo menos 1 metro de distância de outras pessoas e não toque nas superfícies com as mãos. Se for uma criança que estiver doente, ajude-a a seguir esta orientação.",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: color.AppColor.colorText)),
                                      SizedBox(height: 20),
                                      Text(
                                          "Procure atendimento médico imediato se tiver dificuldade de respirar ou dor/pressão no peito. Se possível, ligue para o seu médico com antecedência, para que ele possa direcioná-lo para o centro de saúde certo.",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: color.AppColor.colorText)),
                                      SizedBox(height: 20),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                            "4. Quem está em risco de desenvolver quadros graves da doença?",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w900,
                                                color:
                                                    color.AppColor.colorText)),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                          "Idosos e pessoas com doenças não transmissíveis, como doenças cardiovasculares (por exemplo, hipertensão, doença cardíaca e derrame), doenças respiratórias crônicas, diabetes e câncer têm um risco mais alto de desenvolver quadros graves da COVID-19.",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: color.AppColor.colorText)),
                                      SizedBox(height: 20),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                            "5. Pessoas infectadas pela COVID-19 podem ter sequelas?",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w900,
                                                color:
                                                    color.AppColor.colorText)),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                          "Após o primeiro relato, no final de dezembro, da doença causada pelo novo coronavírus, o conhecimento sobre suas complicações e sequelas aumentou substancialmente. A principal sequela nos pacientes que tiveram quadro clínico grave de COVID-19 é a fibrose pulmonar. Também foram identificadas miocardite relacionada à infecção, com redução da função sistólica e arritmias; declínio cognitivo de longo prazo, como deficiências de memória, atenção, velocidade de processamento e funcionamento, juntamente com perda neuronal difusa; encefalopatia aguda, alterações de humor, psicose, disfunção neuromuscular ou processos desmielinizantes; sequelas psicológicas relacionadas ao distanciamento social; entre outras.",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: color.AppColor.colorText)),
                                      SizedBox(height: 20),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                            "6. Como se proteger da COVID-19?",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w900,
                                                color:
                                                    color.AppColor.colorText)),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                          "Praticar a higiene das mãos e respiratória é importante em TODOS os momentos e é a melhor maneira de proteger aos outros e a si mesma(o). Sempre que possível, mantenha uma distância de pelo menos 1 metro entre você e os outros, principalmente se você estiver ao lado de alguém que tosse ou espirra. Como algumas pessoas infectadas podem não estar ainda apresentando sintomas ou os sintomas podem ser leves, manter uma distância física de todos é uma boa ideia se você estiver em uma área onde a COVID-19 está circulando.",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: color.AppColor.colorText)),
                                      SizedBox(height: 20),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                            "7. O vírus causador da COVID-19 sofreu mutações?",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w900,
                                                color:
                                                    color.AppColor.colorText)),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                          "O surgimento de mutações é um evento natural e esperado dentro do processo evolutivo dos vírus. As medidas de proteção funcionam para todas as variantes do vírus causador da COVID-19 (SARS-CoV-2) identificadas até o momento. Ou seja, para proteger a si e aos outros, é preciso contiuar a: manter distanciamento físico, usar máscara, ter ambientes bem ventilados, evitar aglomerações, limpar as mãos e tossir/espirrar com cotovelo dobrado ou em lenço de papel.",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: color.AppColor.colorText)),
                                      SizedBox(height: 20),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                            "8. Existe uma vacina contra a COVID-19?",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w900,
                                                color:
                                                    color.AppColor.colorText)),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                          "Em maio de 2021, algumas vacinas contra a COVID-19 receberam autorização para uso em países específicos. A OMS também concedeu autorização à vacina da Pfizer/BioNTech, às duas versões das vacinas AstraZeneca/Oxford (SKBio e Serum Institute of India), a vacina da Janssen, a vacina da Moderna e a vacina de Sinopharm. Outros imunizantes continuam sendo avaliados.",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: color.AppColor.colorText)),
                                      SizedBox(height: 20),
                                      Text(
                                          "Para mais informaçôes, consulte https://www.paho.org/pt/covid19.",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: color.AppColor.colorText)),
                                      SizedBox(height: 10),
                                      Text(
                                          "OPAS/OMS, acesso em 05/10/2021 às 21:33. Disponìvel em: <https://www.paho.org>.",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: color.AppColor.colorText)),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
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
