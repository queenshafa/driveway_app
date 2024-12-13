List<Map<String, String>> getCarList(String category) {
  switch (category) {
    case "Porsche 911":
      return [
        {
          'image': 'assets/images/porsche_911_sideview.png',
          'title': 'Porsche 911',
          'description':
              'Anyone who dreams of a Porsche usually has an image in their mind: the 911 has been the epitome of an exciting, powerful sports car with day-to-day usability for 60 years. Take a seat behind the wheel of the new 911 and become part of a unique community.',
          'gasType1': 'Pertamax',
          'gasType2': 'Shell V-Power Nitro+',
          'acceleration': '3,3s',
          'capacity': '4 Person',
          'price': '\$125/day',
        }
      ];
    case "Porsche Taycan":
      return [
        {
          'image': 'assets/images/porsche_taycan.png',
          'title': 'Porsche Taycan',
          'description':
              'The overwhelming feeling of sitting in an amazing electric sports car: the new Taycan makes electricity even more electrifying. Performance even more impressive. And the extraordinary even more outstanding.',
          'gasType1': 'Electric',
          'gasType2': 'Charging',
          'acceleration': '4,8s',
          'capacity': '4 Person',
          'price': '\$120/day'
        }
      ];
    case "BMW M3":
      return [
        {
          'image': 'assets/images/bmw_m3_touring.png',
          'title': 'BMW M3 Touring',
          'description':
              'The first of its kind, now with refined design: The BMW M3 Touring with M xDrive goes to particularly impressive lengths to deliver on the traditional M promise of dynamic flair, agility and precision combined with unrestricted everyday practicality and mile-covering ability.',
          'gasType1': 'Pertamax Turbo',
          'gasType2': 'Shell V-Power Nitro+',
          'acceleration': '3,6s',
          'capacity': '5 Person',
          'price': '\$110/day'
        }
      ];
    case "Ferrari 488":
      return [
        {
          'image': 'assets/images/ferrari_488-gtb.png',
          'title': 'Ferrari 488 GTB',
          'description':
              'The 488 GTB name marks a return to the classic Ferrari model designation with the 488 in its moniker indicating the engine\'s unitary displacement, while the GTB stands for Gran Turismo Berlinetta.',
          'gasType1': 'Pertamax Turbo',
          'gasType2': 'Shell V-Power Nitro+',
          'acceleration': '3s',
          'capacity': '2 Person',
          'price': '\$240/day'
        }
      ];
      case "Porsche Cayenne":
      return [
        {
          'image': 'assets/images/porsche_cayenne.png',
          'title': 'Porsche Cayenne',
          'description':
              'The 488 GTB name marks a return to the classic Ferrari model designation with the 488 in its moniker indicating the engine\'s unitary displacement, while the GTB stands for Gran Turismo Berlinetta.',
          'gasType1': 'Pertamax Turbo',
          'gasType2': 'Shell V-Power Nitro+',
          'acceleration': '3s',
          'capacity': '5 Person',
          'price': '\$240/day'
        }
      ];
    default:
      return [];
  }
}
