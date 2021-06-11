import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
enum Gender { Male, Female, unknown }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender genderSelected = Gender.unknown;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: genderSelected == Gender.Male? activeCardColor: inactiveCardColor,
                      cardChild: AddIcon('MALE', FontAwesomeIcons.mars),
                      onPress: (){
                        genderSelected=Gender.Male;
                      }
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                        colour: genderSelected == Gender.Female? activeCardColor: inactiveCardColor,
                        cardChild: AddIcon('FEMALE', FontAwesomeIcons.venus),
                        onPress: (){
                          genderSelected=Gender.Female;
                        }
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(colour: activeCardColor, cardChild:Container(),onPress:(){}),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(colour: activeCardColor, cardChild: Container(),onPress: (){}),
                  ),
                  Expanded(
                    child: ReusableCard(colour: activeCardColor, cardChild: Container(),onPress: (){}),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
            )
          ],
        ));
  }
}
