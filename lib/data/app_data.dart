import 'package:flutter/material.dart';

/// Real-estate projects (buildings) residents can belong to.
/// Single source of truth — previously duplicated across three screens.
const List<String> kBuildings = [
  'La Suite',
  "L'Aristocrate",
  'Domaine des Méandres',
  'Villas Cortina',
  'Le Divin',
  'Le WOW',
  'Le 696 St-Jean',
  '550 St-Jean (Stationnement)',
  'LUXO',
  'Frontenac',
];

/// Service types a resident can request.
const List<String> kServices = [
  'Plumbing',
  'Electrical',
  'HVAC',
  'Cleaning',
  'Maintenance',
  'Painting',
  'Flooring',
  'Appliance Repair',
  'Pest Control',
  'Security',
];

/// Icon for a given service. Previously duplicated in two screens.
IconData serviceIcon(String service) {
  switch (service) {
    case 'Plumbing':
      return Icons.plumbing;
    case 'Electrical':
      return Icons.electrical_services;
    case 'HVAC':
      return Icons.air;
    case 'Cleaning':
      return Icons.cleaning_services;
    case 'Maintenance':
      return Icons.build;
    case 'Painting':
      return Icons.format_paint;
    case 'Flooring':
      return Icons.layers;
    case 'Appliance Repair':
      return Icons.kitchen;
    case 'Pest Control':
      return Icons.bug_report;
    case 'Security':
      return Icons.security;
    default:
      return Icons.home_repair_service;
  }
}
