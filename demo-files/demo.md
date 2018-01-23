<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->
<!-- code_chunk_output -->

* [Getting Spell Check Working in Atom on Windows 7](#getting-spell-check-working-in-atom-on-windows-7)
* [Note](#note)

<!-- /code_chunk_output -->

# Getting Spell Check Working in Atom on Windows 7
1. Inside of Atom, Click on `File` then `Settings`
2. Select `Packages`
3. Search for `spell-check`
4. Click on the `Settings` button for the `spell-check` package
5. Under `Locale Paths` type the following
    ```
    <path-to-Atom>\Atom x64\resources\app\node_modules\spellchecker\vendor\hunspell_dictionaries
    ```
    **Note 1:** you can use the following command in cygwin/babun to find the Locale Path
      ```
      hunspell=$(find /cygdrive/c -name "hunspell_dictionaries" -printf '%h' -quit) &>/dev/null ||  hunspell=$(echo "$hunspell"/hunspell_dictionaries) && cygpath -w $hunspell
      ```
    **Note 2:** the `hunspell_dictionaries` may be downloaded from this url: `https://sourceforge.net/projects/hunspell/files/Spelling%20dictionaries/en_US/en_US.zip/download` and placed in any path you like, just type the path in `Locale Paths`.
***Spell checking should now work the way it is supposed to after restarting Atom***
# Link
>Note: _There is a new commit on "master" that you would like to include in your release._
![git-commits_question](assets/git-commits_question.jpg)
