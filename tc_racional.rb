#! /usr/local/rvm/rubies/ruby-2.0.0-p247/bin/ruby

# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion



require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
        def test1
                
                assert_equal( "2/3", Fraccion.new(2,3).to_s )
                assert_raise( ArgumentError) { Fraccion.new(1, 0) } # Fallo
        end
        
        def test2
                # Suma
                assert_equal( "7/3", (Fraccion.new(5, 3).suma( Fraccion.new(2, 3) ) ).to_s )
                assert_equal( "27/5", (Fraccion.new(2, 5).suma( 5 )).to_s )
                # Resta
                assert_equal( "1/15", (Fraccion.new(2, 3).resta( Fraccion.new(3, 5) ) ).to_s )
                assert_equal( "-1/2", (Fraccion.new(1, 2).resta( 1 )).to_s )
                # Producto
                assert_equal( "1/4", (Fraccion.new(1, 2).producto( Fraccion.new(1, 2) ) ).to_s )
                assert_equal( "2/3", (Fraccion.new(1, 3).producto( 2 )).to_s )
                # División
                assert_equal( "3/2", (Fraccion.new(1, 2).division( Fraccion.new(1, 3) ) ).to_s )
                assert_equal( "3/4", (Fraccion.new(3, 2).division( 2 )).to_s )
        end
        
        def test_typecheck
                assert_raise( ArgumentError ) { Fraccion.new('a', "b") }
        end
        
        def test_failure
                assert_raise( ArgumentError ) { (Fraccion.new(1, 3)).division(0) } # Imposible dividir por 0 y que se cree un objeto del tipo a/0
                assert_equal( "6/9", (Fraccion.new(6, 9)).to_s ) # La reducción funciona
        end
end


