lazy val judgels = (project in file("."))
    .disablePlugins(sbt.plugins.JUnitXmlReportPlugin)
    .dependsOn(jophiel, sandalphon, sealtiel, uriel, michael, jerahmeel, gabriel)
    .aggregate(jophiel, sandalphon, sealtiel, uriel, michael, jerahmeel, gabriel)
    .settings(javaUnidocSettings: _*)
    .settings(
        name := "judgels",
        version := IO.read(file("version.properties")).trim,
        scalaVersion := "2.11.7"
    )
    .settings(
        sources in (Compile, doc) <<= sources in (Compile, doc) map { _.filterNot(f => (f.getName endsWith ".scala") || (f.getName contains "Routes")) }
    )

lazy val jophiel = RootProject(file("../judgels-jophiel"))
lazy val sandalphon = RootProject(file("../judgels-sandalphon"))
lazy val sealtiel = RootProject(file("../judgels-sealtiel"))
lazy val uriel = RootProject(file("../judgels-uriel"))
lazy val michael = RootProject(file("../judgels-michael"))
lazy val jerahmeel = RootProject(file("../judgels-jerahmeel"))
lazy val gabriel = RootProject(file("../judgels-gabriel"))
