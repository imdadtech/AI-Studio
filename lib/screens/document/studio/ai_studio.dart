import 'package:docs_ai/screens/document/studio/feature_card.dart';
import 'package:docs_ai/screens/document/studio/model/ai_model.dart';
import 'package:docs_ai/screens/document/studio/model/feature_display.dart';
import 'package:docs_ai/utils/app_assets.dart';
import 'package:flutter/material.dart';

final List<FeatureDisplay> _features = <FeatureDisplay>[
  FeatureDisplay(
    title: 'Summarize',
    icon: AppAssets.summarizeTextIcon,
    models: <AiModel>[
      const AiModel(
        title: 'ChatGpt',
        key: 'chatgpt',
      ),
      const AiModel(
        title: 'Falconsai/text_summarization',
        key: 'falconsai-text_summarization',
      ),
    ],
  ),
  FeatureDisplay(
    title: 'Generate Image',
    icon: AppAssets.generateImageIcon,
    models: <AiModel>[
      const AiModel(
        title: 'Dalle',
        key: 'dalle',
      ),
      const AiModel(
        title: 'Runwayml',
        key: 'runwayml',
      ),
    ],
  ),
  FeatureDisplay(
    title: 'Ask AI',
    icon: AppAssets.askAIIcon,
    models: <AiModel>[
      const AiModel(
        title: 'ChatGpt',
        key: 'chatgpt',
      ),
      const AiModel(
        title: 'Gemini',
        key: 'gemini',
      ),
    ],
  ),
];

/// Contains the visual aspect of the AI Studio
class AiStudio extends StatefulWidget {
  /// Creates a [AiStudio]
  const AiStudio({super.key});

  @override
  State<AiStudio> createState() => _AiStudioState();
}

class _AiStudioState extends State<AiStudio> {
  int _selectedSectionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _features.map<Widget>((FeatureDisplay feature) {
            final int sectionIndex = _features.indexOf(feature);

            return Padding(
              padding: const EdgeInsets.only(
                right: 18,
              ),
              child: FeatureCard(
                onPressed: () {
                  setState(() {
                    _selectedSectionIndex = sectionIndex;
                  });
                },
                icon: feature.icon,
                title: feature.title,
                width: 150,
                height: 150,
                isSelected: _selectedSectionIndex == sectionIndex,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
