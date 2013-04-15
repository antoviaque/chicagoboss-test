# Installation

## Pre-requisites

### Erlang

```
$ sudo apt-get install erlang
```

### Chicago Boss

Download Chicago Boss and extract it:

```
$ wget http://www.chicagoboss.org/ChicagoBoss-0.8.5.tar.gz
$ tar xvzf ChicagoBoss-0.8.5.tar.gz
```

## Cloning

```
$ git clone git@github.com:antoviaque/language_core.git
$ cd language_core
```

# Configuration

### Chicago Boss

Create a copy of the configuration file:

```
$ cp boss.config.example boss.config
```

And add the path to the Chicago Boss directory in your configuration file:

```
[{boss, [
    {path, "/home/antoviaque/prog/chicagoboss-0.8.5"},
    ...
```

Also create a directory to contain the server logs:

$ mkdir log

For more details about Chicago Boss & its configuration, see the [Chicago Boss tutorial](http://evanmiller.org/chicago-boss-tutorial.pdf).

# Running

## Development server

```
$ ./init-dev.sh
```

## Production server

```
$ ./init.sh start
```

## Website

Then point your browser to http://localhost:8001/

