import 'package:docs_ai/screens/document/studio/feature_card.dart';
import 'package:docs_ai/screens/document/studio/model/ai_model.dart';
import 'package:docs_ai/screens/document/studio/model/feature_display.dart';
import 'package:docs_ai/screens/document/widgets/gen_ai_image.dart';
import 'package:docs_ai/screens/document/widgets/summarize_text.dart';
import 'package:docs_ai/utils/app_assets.dart';
import 'package:docs_ai/utils/app_text.dart';
import 'package:docs_ai/viewModels/ai_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

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
    type: 'text',
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
    type: 'image',
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
    type: 'ask',
  ),
];

/// Contains the visual aspect of the AI Studio
class AiStudio extends StatefulWidget {
  /// Creates a [AiStudio]
  const AiStudio({
    super.key,
    required this.controller,
  });

  final QuillController controller;

  @override
  State<AiStudio> createState() => _AiStudioState();
}

class _AiStudioState extends State<AiStudio> {
  int _selectedSectionIndex = 0;

  late AiModel _currentSelectedModel;
  late List<AiModel> _currentModelsSelected;

  @override
  void initState() {
    super.initState();
    _currentModelsSelected = _features.first.models;
    _currentSelectedModel = _currentModelsSelected.first;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                    _currentModelsSelected = feature.models;
                    _currentSelectedModel = feature.models.first;
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
        const Gap(30),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: _currentModelsSelected
              .map(
                (AiModel model) => Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Radio<AiModel>(
                        value: model,
                        groupValue: _currentSelectedModel,
                        onChanged: (AiModel? value) {
                          setState(() {
                            _currentSelectedModel = value!;
                          });
                        },
                      ),
                      Text(model.title),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
        const Gap(30),
        Visibility(
          visible: _features[_selectedSectionIndex].type == 'text',
          child: SummarizeText(
            controller: widget.controller,
            ctaTitle: AppText.summarize,
            aiAction: SummarizeAction(),
          ),
        ),
        Visibility(
          visible: _features[_selectedSectionIndex].type == 'image',
          child: GenAiImage(
            controller: widget.controller,
          ),
        ),
        Visibility(
          visible: _features[_selectedSectionIndex].type == 'ask',
          child: SummarizeText(
            controller: widget.controller,
            ctaTitle: 'Ask',
            aiAction: AskAiAction(
              type: 'chatgpt',
            ),
          ),
        ),
      ],
    );
  }
}

/// The implementation of the AI action to call the summarize method
class SummarizeAction implements IAiAction {
  @override
  Future<String?> action(WidgetRef ref, String text) async {
    return AIViewModel().summarize(
      ref: ref,
      text: text,
    );
  }
}

/// The implementation of the AI action to call the askAi method
class AskAiAction implements IAiAction {
  /// Creates a [AskAiAction] instance
  AskAiAction({required this.type});

  /// Contains the type of AI
  final String type;

  @override
  Future<String?> action(WidgetRef ref, String text) async {
    return AIViewModel().askAi(
      ref: ref,
      text: text,
      type: type,
    );
  }
}
