package Service;

import java.util.List;
import Model.Recruitment_JoinDetails;

public interface Recruitment_Register {
	int join(Recruitment_JoinDetails joindetails);
    int delete(Recruitment_JoinDetails joindetails);
}
