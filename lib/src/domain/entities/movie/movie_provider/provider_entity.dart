import 'package:equatable/equatable.dart';

class ProviderEntity extends Equatable {
  final int? displayPriority;
  final String? logoPath;
  final int? providerId;
  final String? providerName;

  const ProviderEntity({
    this.displayPriority,
    this.logoPath,
    this.providerId,
    this.providerName,
  });

  @override
  List<Object?> get props {
    return [
      displayPriority,
      logoPath,
      providerId,
      providerName,
    ];
  }
}
