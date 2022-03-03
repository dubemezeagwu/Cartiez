import 'package:cartiez/models/product.dart';
import 'package:cartiez/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../helpers/color_dot.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Product product;
  const ProductDetailsScreen({
    Key? key,
    required this.product}) : super(key: key);

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,),
        actions: [
          IconButton(
          onPressed: (){},
          icon: CircleAvatar(
            backgroundColor: Colors.white,
              child: SvgPicture.asset(
                  "assets/icons/Heart.svg",
                height: 20,
              )))
        ],
      ),
      body: Column(
        children: [
          Image.asset(
              widget.product.image,
          height: MediaQuery.of(context).size.height * 0.4,
          fit: BoxFit.cover,),
          const SizedBox(height: defaultPadding,),
          Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(defaultPadding, defaultPadding * 1.5, defaultPadding, defaultPadding),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(defaultBorderRadius * 3),
                    topRight: Radius.circular(defaultBorderRadius * 3)
                  )
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                                widget.product.title,
                            style: Theme.of(context).textTheme.headline6,),
                          ),
                          SizedBox(width: defaultPadding,),
                          Text("\$" + widget.product.price.toString(), style: Theme.of(context).textTheme.headline6,),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                        child: Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia."),
                      ),
                      Text(
                        "Colors",
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      const SizedBox(height: defaultPadding / 2),
                      Row(
                        children: const [
                          ColorDot(
                            color: Color(0xFFBEE8EA),
                            isActive: false,
                          ),
                          ColorDot(
                            color: Color(0xFF141B4A),
                            isActive: true,
                          ),
                          ColorDot(
                            color: Color(0xFFF4E5C3),
                            isActive: false,
                          ),
                        ],
                      ),
                      const SizedBox(height: defaultPadding * 2,),
                      Center(
                        child: SizedBox(
                        width: 200,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {  },
                          style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            shape: const StadiumBorder()
                          ),
                          child: Text("Add to Cart"),)
                      ),)
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}



