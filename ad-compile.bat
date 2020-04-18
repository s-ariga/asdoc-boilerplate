@rem asciidoctor compile. With CJK
@rem テーマフォルダ theme
@rem fontフォルダ fonts

asciidoctor-pdf -v -w -r asciidoctor-pdf-cjk -r asciidoctor-diagram -a pdf-stylesdir=theme -a pdf-style=my-theme.yml -a pdf-fontsdir=fonts %1
