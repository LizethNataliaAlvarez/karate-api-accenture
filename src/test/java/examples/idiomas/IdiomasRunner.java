package examples.idiomas;

import com.intuit.karate.junit5.Karate;

class IdiomasRunner {
    @Karate.Test
    Karate testPostIdiomas() {
        return Karate.run("post-idiomas").relativeTo(getClass());
    }

    @Karate.Test
    Karate testGetIdiomas() {
        return Karate.run("get-idiomas").relativeTo(getClass());
    }

    @Karate.Test
    Karate testPutIdiomas() {
        return Karate.run("put-idiomas").relativeTo(getClass());
    }

    @Karate.Test
    Karate testDeleteIdiomas() {
        return Karate.run("delete-idiomas").relativeTo(getClass());
    }

}

// Nota: El nombre de la clase no sigue el patrón de test recomendado por algunos frameworks (por ejemplo, *Test o *IT). Si es necesario para tu pipeline o herramientas de CI/CD, renómbrala a IdiomasTest o IdiomasRunnerTest.
