class Project {
  final String title;
  final String description;
  final List<String> assets;
  final String? urlWeb;
  final String? urlGithub;
  final String? urlPlayStore;
  final String? urlAppStore;

  Project({
    required this.title,
    required this.assets,
    this.description = '',
    this.urlWeb,
    this.urlGithub,
    this.urlPlayStore,
    this.urlAppStore,
  });
}

final List<Project> projects = [
  Project(
    title: 'Cuajimalpa Plus',
    description:
        'Aplicación móvil para solicitar taxis en la alcaldía de Cuajimalpa en la Ciudad de México. ',
    assets: [
      'assets/apps/cuajimalpa_plus_1.png',
      'assets/apps/cuajimalpa_plus_2.png',
      'assets/apps/cuajimalpa_plus_3.png',
    ],
    urlPlayStore:
        'https://play.google.com/store/apps/details?id=netrabbit.cuajimalpaplus.cliente',
    urlAppStore:
        'https://apps.apple.com/mx/app/cuajimalpaplus/id6463042594?l=en-GB',
  ),
  Project(
    title: 'Tasking App',
    description: 'Aplicación móvil para gestionar tareas y proyectos.',
    assets: [
      'assets/apps/tasking_1.png',
      'assets/apps/tasking_2.png',
      'assets/apps/tasking_3.png',
    ],
    urlGithub: 'https://github.com/ingedevs/tasking_app.git',
  ),
];
