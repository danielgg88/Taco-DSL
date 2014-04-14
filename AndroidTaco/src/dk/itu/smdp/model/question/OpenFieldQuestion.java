package dk.itu.smdp.model.question;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import dk.itu.smdp.model.answer.Answer;
import dk.itu.smdp.model.answer.OpenFieldAnswer;

/**
 * Created by centos on 4/13/14.
 */
public class OpenFieldQuestion extends Question{
    public OpenFieldQuestion(boolean _isMandatory, String _questionText) {
        super(_isMandatory, _questionText);
        super.addAnswer(new OpenFieldAnswer(""));
    }

    @Override
    public void addAnswer(Answer a) {

    }

    @Override
    public View getView(Context context, ViewGroup parent) {

        LinearLayout layout = initQuestionLayout(context, parent);

        populateAnswerViews(context , layout , layout);

        return layout;
    }
}