#!/usr/bin/env nextflow

process sayHello {
  input: 
    val x
  output:
    stdout
  script:  
    """
    echo '$x world!'
    """
}

workflow {
  Channel.of('Bojour', 'Ciao', 'Hello', 'Hola') | sayHello | view
}
