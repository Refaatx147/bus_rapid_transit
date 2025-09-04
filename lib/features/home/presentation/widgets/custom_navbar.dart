import 'package:bus_rapid_transit/core/utils/theme/colors.dart';
import 'package:bus_rapid_transit/features/home/presentation/widgets/navigation_item.dart';
import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key,required this.navItems,required this.selectedIndex, required this.onTapItem});

  final List<NavigationItem> navItems;
  final int selectedIndex;
  final void Function(int) onTapItem;
  @override
  Widget build(BuildContext context) {
    return    Stack(
    children: [
      Container(
        height: 65,
        margin: const EdgeInsets.only(top: 25),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(30),
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(70),
            topRight: Radius.circular(70),
          ),
        ),
      ),
      
      Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(navItems.length, (index) {
            final item = navItems[index];
            final isSelected = index == selectedIndex;
            
            return Column(
              children: [
                GestureDetector(
                  onTap: () => onTapItem(index),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: ConstColors.mainText ,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: ConstColors.dropdownButtonColor.withAlpha(30),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Icon(
                      item.icon,
                      color: isSelected ? ConstColors.clickedButton :ConstColors.dropdownButtonColor.withAlpha(85),
                      size: 24,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  item.label,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Almarai',
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                    color: isSelected ?ConstColors.clickedButton :ConstColors.dropdownButtonColor.withAlpha(85),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    ],
  );
}
  }
