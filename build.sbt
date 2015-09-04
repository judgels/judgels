lazy val judgels = (project in file("."))
    .disablePlugins(sbt.plugins.JUnitXmlReportPlugin)
    .dependsOn(jophiel, sandalphon, sealtiel, uriel, michael, jerahmeel, gabriel, raguel)
    .aggregate(jophiel, sandalphon, sealtiel, uriel, michael, jerahmeel, gabriel, raguel)
    .settings(javaUnidocSettings: _*)
    .settings(
        name := "judgels",
        version := IO.read(file("version.properties")).trim,
        scalaVersion := "2.11.7"
    )
    .settings(
        sources in (Compile, doc) <<= sources in (Compile, doc) map { _.filterNot(f => (f.getName endsWith ".scala") || (f.getName contains "Routes")) }
    )

lazy val jophiel = RootProject(file("../jophiel"))
lazy val sandalphon = RootProject(file("../sandalphon"))
lazy val sealtiel = RootProject(file("../sealtiel"))
lazy val uriel = RootProject(file("../uriel"))
lazy val michael = RootProject(file("../michael"))
lazy val jerahmeel = RootProject(file("../jerahmeel"))
lazy val gabriel = RootProject(file("../gabriel"))
lazy val raguel = RootProject(file("../raguel"))
