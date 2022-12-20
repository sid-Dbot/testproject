import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';

class ActionsRow extends StatelessWidget {
  Row _buildIcon(String icon, String label, {Color labelColor = Colors.black}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image.asset(
            icon,
            height: 25,
            width: 25,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(
            label,
            style: TextStyle(
              color: labelColor,
              fontWeight: FontWeight.w300,
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }

  Image _buildPreviewIcon(String icon) {
    return Image.asset(
      icon,
      height: 40,
      width: 40,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ReactionButtonToggle(
            onReactionChanged: (p0, p1) {},
            reactions: [
              Reaction(
                  previewIcon: _buildPreviewIcon('assets/icons/Like.png'),
                  icon: _buildIcon(
                    'assets/icons/Like.png',
                    'Like',
                    labelColor: Colors.blue,
                  ),
                  value: 'Like'),
              Reaction(
                  previewIcon: _buildPreviewIcon('assets/icons/Heart.png'),
                  icon: _buildIcon(
                    'assets/icons/Heart.png',
                    'Love',
                    labelColor: Colors.red,
                  ),
                  value: 'Love'),
              Reaction(
                  previewIcon: _buildPreviewIcon('assets/icons/angry.png'),
                  icon: _buildIcon(
                    'assets/icons/angry.png',
                    'Angry',
                    labelColor: Colors.orange,
                  ),
                  value: 'Angry'),
            ],
            initialReaction: Reaction(
                icon: _buildIcon('assets/icons/LikeButton.png', 'Like'),
                value: 'Like'),
          ),
          _buildIcon('assets/icons/Comment.png', 'Comment'),
          _buildIcon('assets/icons/Share.png', 'Share')
        ],
      ),
    );
  }
}
