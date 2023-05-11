import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  double height = 150, bmi = 00;
  int width = 40;
  int age = 20;
  Color white1 = Colors.black38;
  Color white2 = Colors.black38;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  height = 150;
                  bmi = 00;
                  width = 40;
                  age = 20;
                  white1 = Colors.black38;
                  white2 = Colors.black38;
                });
              },
              icon: Icon(
                Icons.refresh,
                color: Colors.black,
              ))
        ],
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TweenAnimationBuilder(
                  tween: Tween<Offset>(
                    begin: const Offset(-300, -300),
                    end: const Offset(0, 0),
                  ),
                  duration: const Duration(seconds: 1),
                  builder: (builder, Offset val, widget) {
                    return Transform.translate(
                      offset: val,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            white1 = (white1 == Colors.black38)
                                ? Colors.black
                                : Colors.black38;
                            white2 = Colors.black38;
                          });
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 38,
                              ),
                              Icon(
                                Icons.male,
                                color: white1,
                                size: 80,
                              ),
                              Text(
                                "MALE",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ],
                          ),
                          height: 175,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                TweenAnimationBuilder(
                  tween: Tween<Offset>(
                    begin: const Offset(300, -300),
                    end: const Offset(0, 0),
                  ),
                  duration: const Duration(seconds: 1),
                  builder: (context, Offset val, widget) {
                    return Transform.translate(
                      offset: val,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            white2 = (white2 == Colors.black38)
                                ? Colors.black
                                : Colors.black38;
                            white1 = Colors.black38;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              Icon(
                                Icons.female,
                                color: white2,
                                size: 80,
                              ),
                              Text(
                                "FEMALE",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ],
                          ),
                          height: 175,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            TweenAnimationBuilder(
                tween: Tween<Offset>(
                  begin: const Offset(-400, 0),
                  end: const Offset(0, 0),
                ),
                duration: const Duration(seconds: 1),
                builder: (context, Offset val, widget) {
                  return Transform.translate(
                    offset: val,
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "HEIGHT",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  "${height.toInt()}",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "cm",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 25),
                                ),
                              ),
                            ],
                          ),
                          Slider(
                              value: height,
                              onChanged: (val) {
                                setState(() {
                                  height = val;
                                });
                              },
                              min: 50,
                              max: 260,
                              label: "${height.toInt()}",
                              divisions: 210,
                              activeColor: Colors.black,
                              inactiveColor: Colors.black54),
                        ],
                      ),
                      height: 155,
                      width: 345,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  );
                }),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TweenAnimationBuilder(
                    tween: Tween<Offset>(
                      begin: const Offset(-300, 300),
                      end: const Offset(0, 0),
                    ),
                    duration: const Duration(seconds: 1),
                    builder: (context, Offset val, widget) {
                      return Transform.translate(
                        offset: val,
                        child: Container(
                          child: InkWell(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "WEIGHT (KG)",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                                Text(
                                  "$width",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    (width > 0)
                                        ? InkWell(
                                      onTap: () {
                                        setState(() {
                                          width--;
                                        });
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "-",
                                          style: TextStyle(
                                              fontSize: 35,
                                              color: Colors.white,
                                              fontWeight:
                                              FontWeight.bold),
                                        ),
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade700,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    )
                                        : Container(
                                      alignment: Alignment.center,
                                      child: const Text(
                                        "-",
                                        style: TextStyle(
                                            fontSize: 35,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade700,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          width++;
                                        });
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "+",
                                          style: TextStyle(
                                              fontSize: 35,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade700,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          height: 175,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      );
                    }),
                SizedBox(
                  width: 20,
                ),
                TweenAnimationBuilder(
                    tween: Tween<Offset>(
                      begin: const Offset(300, 300),
                      end: const Offset(0, 0),
                    ),
                    duration: const Duration(seconds: 1),
                    builder: (context, Offset val, widget) {
                      return Transform.translate(
                        offset: val,
                        child: Container(
                          child: InkWell(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "AGE (Year)",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                                Text(
                                  "$age",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 60,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    (age > 0)
                                        ? InkWell(
                                      onTap: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "-",
                                          style: TextStyle(
                                              fontSize: 35,
                                              color: Colors.white,
                                              fontWeight:
                                              FontWeight.bold),
                                        ),
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade700,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    )
                                        : Container(
                                      alignment: Alignment.center,
                                      child: const Text(
                                        "-",
                                        style: TextStyle(
                                            fontSize: 35,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade700,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "+",
                                          style: TextStyle(
                                              fontSize: 35,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade700,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          height: 175,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      );
                    }),
              ],
            ),
            SizedBox(height: 20),
            TweenAnimationBuilder(
              tween: Tween<Offset>(
                begin: const Offset(400, 0),
                end: const Offset(0, 0),
              ),
              duration: const Duration(seconds: 1),
              builder: (context, value, child) => Transform.translate(
                offset: value,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      bmi = width / ((height / 100) * (height / 100));
                    });
                  },
                  child: Container(
                      height: 40,
                      width: 180,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: Text(
                        "Calculate",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
            ),
            SizedBox(height: 20),
            bmi == 0
                ? Text("")
                : Text(
              "BMI is : ${bmi.toStringAsFixed(2)}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.green),
            ),
            SizedBox(height: 10),
            Text(
              "${bmi == 0 ? "" : bmi >= 25 ? "Overweight" : bmi >= 18.5 && bmi <= 24.9 ? "Healthy" : bmi >= 1 && bmi <= 18.4 ? "Underweight" : ""}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}