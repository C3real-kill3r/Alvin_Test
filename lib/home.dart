import 'package:flutter/material.dart';
import 'components/export_components.dart';
import 'components/icon_widget.dart';
import 'utilities/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width * 0.03;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            AppIcons(
              icon: FontAwesomeIcons.chevronLeft,
              color: kinactiveColor,
              onPressed: () {},
            ),
            SizedBox(
              width: size.width * 0.12,
            ),
            Text(
              'Manage budget',
              style: ktitleText,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          AppIcons(
            icon: FontAwesomeIcons.layerGroup,
            color: kinactiveColor,
            onPressed: () {},
          ),
          AppIcons(
            icon: FontAwesomeIcons.cog,
            color: kinactiveColor,
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: ktabBackgroundColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'Essentials',
                        style: kinactiveTab,
                      ),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: 130,
                          height: 45,
                          child: Center(
                            child: Text(
                              'Wants',
                              style: kactiveTab,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Text(
                        'Savings',
                        style: kinactiveTab,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            WalletBar(size: size),
            SizedBox(
              height: 20,
            ),
            // TODO: Use a Wrap widget to display the wallet widgets
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wallet(
                    color: kspentColor,
                    amount: "24,000 spent",
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Wallet(
                    color: kavailableColor,
                    amount: "5,000 available",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: width),
              child: Wallet(
                color: kunallocatedColor,
                amount: "5,000 unallocated",
              ),
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            // TODO: Create a ListView of Wants widget
            Wants(title: "Family & Friends"),
            SizedBox(
              height: size.height * 0.04,
            ),
            Wants(
              title: "Going out",
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Wants(
              title: "Miscellaneous",
            ),
          ],
        ),
      ),
    );
  }
}
