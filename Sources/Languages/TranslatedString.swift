//
//  File.swift
//  
//
//  Created by Coen ten Thije Boonkkamp on 03/05/2023.
//

import Foundation

public typealias TranslatedString = Translated<String>

public extension TranslatedString {
    static let space: Self = .init(String.space)
    static let period: Self = .init(String.period)
    static let comma: Self = .init(String.comma)
    static let semicolon: Self = .init(String.semicolon)
    static let questionmark: Self = .init(String.questionmark)
}

public extension TranslatedString {

    static let male: Self = .init(
        dutch: "man",
        english: "male",
        french: "mâle",
        german: "Mann",
        spanish: "masculino"
    )

    static let female: Self = .init(
        dutch: "vrouw",
        english: "female",
        french: "femme",
        german: "Frau",
        spanish: "femenina"
    )

    static let nonBinaire: Self = .init(
        dutch: "non-binair",
        english: "non binary",
        french: "non binaire",
        german: "nicht binär",
        spanish: "No binario"
    )

    static let answer: Self = .init(
        dutch: "antwoord",
        english: "answer",
        french: "répondre",
        german: "antwort",
        spanish: "respuesta"
    )

    static let agree: Self = .init(
        dutch: "eens",
        english: "agree",
        french: "convenu",
        german: "stimmt",
        spanish: "acordado"
    )

    static let disagree: Self = .init(
        dutch: "oneens",
        english: "disagree",
        french: "désaccord",
        german: "nein",
        spanish: "discrepar"
    )

    static let compact: Self = .init(
        dutch: "compact",
        english: "compact",
        french: "compact",
        german: "kompakt",
        spanish: "compacto"
    )

    static let complete: Self = .init(
        dutch: "compleet",
        english: "complete",
        french: "complet",
        german: "vollständig",
        spanish: "completo"
    )

    static let your_name: Self = .init(
        dutch: "je naam",
        english: "your name",
        french: "votre nom",
        german: "Ihren Namen",
        spanish: "Su nombre"
    )

    static let your_gender: Self = .init(
        dutch: "je geslacht",
        english: "your gender",
        french: "votre sexe",
        german: "dein Geschlecht",
        spanish: "tu género"
    )

    static let select_an_option: Self = .init(
        dutch: "selecteer een keuze",
        english: "select an option",
        french: "choisir une option",
        german: "Wähle eine Option",
        spanish: "Seleccione una opción"
    )

    static let gender: Self = .init(
        dutch: "gender",
        english: "gender",
        french: "genre",
        german: "Geschlecht",
        spanish: "género"
    )

    static let new: Self = .init(
        dutch: "Nieuw",
        english: "New",
        french: "Nouveau",
        german: "Neue",
        spanish: "Nuevo"
    )

    static let language: Self = .init(
        dutch: "Taal",
        english: "Language",
        french: "Langue",
        german: "Sprache",
        spanish: "Idioma"
    )

    static let next: Self = .init(
        dutch: "volgende",
        english: "next"
    )

    static let subject: Self = .init(
        dutch: "onderwerp",
        english: "subject"
    )

    static let date: Self = .init(
        dutch: "datum",
        english: "date"
    )

    static let name: Self = .init(
        dutch: "naam",
        english: "name"
    )

    static let `continue`: Self = .init(
        dutch: "doorgaan",
        english: "continue"
    )

    static let `true`: Self = .init(
        dutch: "waar",
        english: "true"
    )

    static let `false`: Self = .init(
        dutch: "onwaar",
        english: "false"
    )

    static let and: Self = .init(
        dutch: "en",
        english: "and",
        french: "et",
        german: "und",
        italian: "e",
        spanish: "y"
    )

    static let or: Self = .init(
        dutch: "of",
        english: "or",
        french: "ou",
        german: "oder",
        italian: "o",
        spanish: "o"
    )

    static let title: Self = .init(
        dutch: "Titel",
        english: "Title",
        french: "Titre",
        german: "Titel",
        spanish: "Título"
    )

    static let delete: Self = .init(
        dutch: "Verwijder",
        english: "Delete",
        french: "Supprimer",
        german: "Löschen",
        spanish: "Borrar"
    )

    static let done: Self = .init(
        dutch: "klaar",
        english: "done",
        french: "fini",
        german: "fertig",
        spanish: "finalizado"
    )

    static let edit: Self = .init(
        dutch: "wijzig",
        english: "edit"
    )

    static let in_progress: Self = .init(
        dutch: "bezig",
        english: "in progress",
        french: "fini",
        german: "im Gange",
        spanish: "en curso"
    )

    static let reset: Self = .init(
        dutch: "Reset",
        english: "Reset",
        french: "Reset",
        german: "Reset",
        spanish: "Reset"
    )

    static let random: Self = .init(
        dutch: "Random",
        english: "Random",
        french: "Random",
        german: "Random",
        spanish: "Random"
    )

    static let cancel: Self = .init(
        dutch: "Annuleer",
        english: "Cancel",
        french: "Annuler",
        german: "Stornieren",
        spanish: "Cancelar"
    )

    static let allow_changes: Self = .init(
        dutch: "sta wijzigingen toe",
        english: "allow changes",
        french: "autoriser les modifications",
        german: "Änderungen zulassen",
        spanish: "permitir cambios"
    )

    static let choose_true_or_false: Self = .init(
        dutch: "Kies waar of onwaar",
        english: "Choose true or false"
    )

    static let cannotUndo: Self = .init(
        dutch: "Je kunt dit niet ongedaan maken",
        english: "You cannot undo this action",
        french: "Vous ne pouvez pas annuler cette action",
        german: "Sie können diese Aktion nicht rückgängig machen",
        spanish: "No puedes deshacer esta acción"
    )

    static let textColor: Self = .init(
        dutch: "Tekstkleur",
        english: "Text color",
        french: "Couleur du texte",
        german: "Textfarbe",
        spanish: "Color de texto"
    )

    static let backgroundColor: Self = .init(
        dutch: "Achtergrondkleur",
        english: "Background color",
        french: "La couleur d'arrière-plan",
        german: "Hintergrundfarbe",
        spanish: "Color de fondo"
    )
}
