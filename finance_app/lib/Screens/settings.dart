import 'package:finance_app/Screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:language_picker/language_picker_dialog.dart';
import 'package:language_picker/language_picker_dropdown.dart';
import 'package:language_picker/languages.dart';
import 'package:settings_ui/settings_ui.dart';




class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

   Language _selectedDialogLanguage = Languages.english;
  @override
  Widget build(BuildContext context) {
    return
     Scaffold(
       body: SafeArea(
         child: Container(
          
          
          
            child: SettingsList(
              sections: [
                SettingsSection(
                  // title: Text('Settings'),
                  tiles: <SettingsTile>[
                    SettingsTile.navigation(
                      title: Icon(Icons.arrow_back),
                      onPressed:(context){ Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfilePage()));},

                    
                    ),
                   SettingsTile.navigation(
                    leading: Icon(Icons.language),
                    title: Text('Language'),
                    value: Text(_selectedDialogLanguage.name ),
                    onPressed: (context) {
                      showDialog(
              context: context,
              builder: (context) => Theme(
              data: Theme.of(context).copyWith(primaryColor: Colors.pink),
              child: LanguagePickerDialog(
                  titlePadding: EdgeInsets.all(8.0),
                  searchCursorColor: Colors.pinkAccent,
                  searchInputDecoration: InputDecoration(hintText: 'Search...'),
                  isSearchable: true,
                  title: Text('Select your language'),
                  onValuePicked: (Language language) => setState(() {
                        _selectedDialogLanguage = language;
                        print(_selectedDialogLanguage.name);
                        print(_selectedDialogLanguage.isoCode);
                      }),
                )));
                    },
                  ),
                    
                    SettingsTile.switchTile(
                      onToggle: (value) {},
                      initialValue: true,
                      leading: Icon(Icons.format_paint),
                      title: Text('Enable custom theme'),
                    ),
                      SettingsTile.switchTile(
                      onToggle: (value) {},
                      initialValue: true,
                      leading: Icon(Icons.notifications),
                      title: Text('Enable Notifications'),
                    ),
                  ],
                ),
                
              ],
            ),
          ),
       ),
     )
    ;
  }
}
