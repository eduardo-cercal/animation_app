import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios_outlined,color: Colors.white,),),
        const Text("ESTUDAR",style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          letterSpacing: 1.2
        ),),
        IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios_outlined,color: Colors.white),),
      ],
    );
  }
}
