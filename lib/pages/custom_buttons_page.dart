import 'package:flutter/material.dart';
import 'package:test_widgets/widgets/custom_base_button.dart';

class CustomButtonsPage extends StatelessWidget {
  const CustomButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Center(
                child: CustomBaseButton(
                  title: 'View Profile',
                  backgroundColor: Colors.blue[100]!,
                  fullWidth: true,
                ),
              ),
              const SizedBox(height: 20),
              const CustomBaseButton(
                title: 'Finalize Inspection',
                backgroundColor: Colors.lightGreen,
                fullWidth: true,
              ),
              const SizedBox(height: 20),
              CustomBaseButton(
                title: 'Done',
                backgroundColor: Colors.blue[100]!,
              ),
              const SizedBox(height: 20),
              CustomBaseButton(
                title: 'Prev.Category',
                backgroundColor: Colors.blue[100]!,
                prefixIcon: Icons.arrow_back_ios,
              ),
              const SizedBox(height: 20),
              CustomBaseButton(
                title: 'Next Category',
                backgroundColor: Colors.blue[100]!,
                suffixIcon: Icons.arrow_forward_ios,
              ),
              const SizedBox(height: 20),
              const CustomBaseButton(
                title: 'Upload',
                backgroundColor: Colors.transparent,
                borderColor: Colors.black,
                prefixIcon: Icons.file_upload_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
