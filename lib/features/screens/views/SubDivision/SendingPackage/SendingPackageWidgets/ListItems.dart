import 'package:flutter/material.dart';
class ListItems extends StatefulWidget {
  final bool initialValue;
  final Function(bool) onChanged;
  const ListItems({Key? key, required this.initialValue, required this.onChanged})
      : super(key: key);

  @override
  State<ListItems> createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
  bool _value = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _value = widget.initialValue;
  }

  List nameItems = [
    'Home delivery',
    'Insurance',
    'Fragile package',
    'Super fast delivery',
  ];
  List costItems = [
    '\$10.0',
        '\$10.0',
        '\$20.0',
        '\$40.0',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) => Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(
              height: 24,
              width: 24,
              child: Checkbox(
                  activeColor: Colors.white,
                  checkColor: const Color(0xFF023202),
                  focusColor: Colors.white,
                  value: _value, onChanged: (newValue){
                _value = newValue!;
                widget.onChanged(newValue);
              }),
            ),
            const SizedBox(width: 4,),
            Text(nameItems[index], style: const TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600
            ),),
          Expanded(
            child: Text(costItems[index],
                textAlign: TextAlign.left,
                style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w600,
            ),
            ),
          ),
            ],
        ),
      ),
      ),
    );
  }
}
