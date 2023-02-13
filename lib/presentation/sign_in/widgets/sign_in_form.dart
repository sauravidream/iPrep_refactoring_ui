import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_package/presentation/sign_in/widgets/sign_in_options.dart';
import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
                (failure) => FlushbarHelper.createError(
                      message: failure.map(
                        invalidPhoneOTP: (_) => 'Invalid OTP',
                        cancelledByUser: (_) => 'Cancelled',
                        serverError: (_) => 'Server error',
                        emailAlreadyInUse: (_) => 'Email already in use',
                        invalidEmailAndPasswordCombination: (_) =>
                            'Invalid email and password combination',
                      ),
                    ).show(context),
                (r) {}));
      },
      builder: (context, state) {
        return Form(
            autovalidateMode: state.showErrorMessages,
            child: const SignInOptions());
      },
    );
  }
}
