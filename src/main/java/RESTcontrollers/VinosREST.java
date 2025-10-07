package RESTcontrollers;

import com.google.gson.Gson;
import daosImpl.VinosDAOImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VinosREST {

    @Autowired
    @Qualifier("vinosDAO")
    private VinosDAOImpl vinosDAO;

    @RequestMapping("vinosREST/obtener")
    public ResponseEntity<String> obtener(){
        String vinosJSON = new Gson().toJson(vinosDAO.obtenerVinos());
        return new ResponseEntity<String>(vinosJSON, HttpStatus.OK);
    }

}
