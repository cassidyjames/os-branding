project('com.github.cassidyjames.test', 'vala', 'c')

gnome = import('gnome')

asresources = gnome.compile_resources (
    'as-resources', join_paths ('data', 'gresource.xml'),
    source_dir: 'data',
    c_name: 'as'
)

executable(
    meson.project_name(),
    join_paths('src', 'Application.vala'),
    asresources,
    dependencies: [
        dependency('granite'),
        dependency('gtk+-3.0'),
    ],
    install: true
)

