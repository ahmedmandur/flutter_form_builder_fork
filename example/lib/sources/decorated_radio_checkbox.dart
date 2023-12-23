import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class DecoratedRadioCheckbox extends StatefulWidget {
  const DecoratedRadioCheckbox({Key? key}) : super(key: key);

  @override
  State<DecoratedRadioCheckbox> createState() => _DecoratedRadioCheckboxState();
}

class _DecoratedRadioCheckboxState extends State<DecoratedRadioCheckbox> {
  final _formKey = GlobalKey<FormBuilderState>();
  int? option;

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          FormBuilderCheckboxGroup(
            name: 'aCheckboxGroup',
            options: getDemoOptionsWidgets(),
            wrapSpacing: 5.0,
            itemDecoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(5.0)),
          ),
          const SizedBox(height: 20),
          FormBuilderCheckboxGroup(
            name: 'aCheckboxGroup',
            options: getDemoOptionsWidgets(),
            wrapSpacing: 5.0,
            controlAffinity: ControlAffinity.trailing,
            itemDecoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(5.0)),
          ),
          const SizedBox(height: 20),
          FormBuilderRadioGroup(
            name: 'aRadioGroup',
            options: getDemoOptionsWidgets(),
            wrapSpacing: 5.0,
            itemDecoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(5.0)),
          ),
          const SizedBox(height: 20),
          FormBuilderRadioGroup(
            name: 'aRadioGroup2',
            options: getDemoOptions(),
            wrapSpacing: 5.0,
            itemDecoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(5.0)),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  List<FormBuilderFieldOption> getDemoOptionsWidgets() {
    return const [
      FormBuilderFieldOption(
          value: "airplane",
          child: Column(
            children: [Text("Airplane"), Icon(Icons.airplanemode_on)],
          )),
      FormBuilderFieldOption(
          value: "fire-truck",
          child:
              Column(children: [Text("Fire Truck"), Icon(Icons.fire_truck)])),
      FormBuilderFieldOption(
          value: "bus-alert",
          child: Column(children: [Text("Bus Alert"), Icon(Icons.bus_alert)])),
      FormBuilderFieldOption(
          value: "firetruck",
          child:
              Column(children: [Text("Motorcycle"), Icon(Icons.motorcycle)])),
    ];
  }

  List<FormBuilderFieldOption> getDemoOptions() {
    return const [
      FormBuilderFieldOption(
        value: "airplane",
      ),
      FormBuilderFieldOption(
        value: "fire-truck",
      ),
      FormBuilderFieldOption(
        value: "bus-alert",
      ),
      FormBuilderFieldOption(
        value: "firetruck",
      ),
    ];
  }
}
