import 'package:assesment_project/data/flash_card_questiondata.dart';
import 'package:flutter/material.dart';

class OptionsItemWidget extends StatelessWidget {
  const OptionsItemWidget({
    super.key,
    required this.onTap,
    required this.selectedIndex,
  });

  final Function(int) onTap;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(FlashCardQuestiondata.options.length, (index) {
          String prefix = String.fromCharCode(65 + index);
          bool isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              onTap(index);
            },
            child: Container(
              margin:  EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                gradient: isSelected
                    ?  LinearGradient(
                        colors: [Color(0xFF310094), Color(0xFF190061)],
                      )
                    : null,
                color: isSelected ? null : Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: isSelected
                    ? null
                    : Border.all(color: const Color(0xFFE2E8F0)),
              ),
              child: Row(
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? Colors.white
                          : const Color(0xFFF1F5F9),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      prefix,
                      style: TextStyle(
                        color: isSelected
                            ? const Color(0xFF310094)
                            : Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),

                  Expanded(
                    child: Text(
                      FlashCardQuestiondata.options[index],
                      style: TextStyle(
                        color: isSelected
                            ? Colors.white
                            : const Color(0xFF334155),
                        fontSize: 16,
                        fontWeight: isSelected
                            ? FontWeight.w500
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: isSelected ? Colors.white : Color(0xFF94A3B8),
                        width: isSelected ? 4 : 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ],
    );
  }
}
