# Install

clone this and install by `ros template import`

```
$ git clone https://github.com/TakagiY/roswell-application-template.git
Cloning into 'roswell-application-template'...
remote: Counting objects: 11, done.
remote: Compressing objects: 100% (9/9), done.
remote: Total 11 (delta 0), reused 11 (delta 0), pack-reused 0
Unpacking objects: 100% (11/11), done.
$ ros template import roswell-application-template
```

# Usage

create new application skeleton by `ros init app your_app_name`

```
$ ros init app myapp
$ tree myapp/
myapp/
├── README.md
├── lib
│   ├── main.lisp
│   └── package.lisp
├── myapp.asd
└── roswell
    └── myapp.ros

2 directories, 5 files
```

you can specify application license. (defaulted MIT)

```
$ ros init app myapp --license LLGPL
```
