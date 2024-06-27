import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
          color: Color(0xff2A2A2A),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 15),
        child: Row(
          children: [Icon(Icons.search,color: Colors.grey,),
            SizedBox(width: 10,),
            Text('Search....',style: TextStyle(color: Colors.grey),)],
        ),
      ),

    );
  }
}