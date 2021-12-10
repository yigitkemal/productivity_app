/*

Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.5),
                        Colors.white.withOpacity(0.2),
                      ],
                    ),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.symmetric(horizontal: 35),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)),
                        margin: EdgeInsets.all(20),
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              hintText: "Mail Address",
                              hintStyle: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

 */