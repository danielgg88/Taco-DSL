package dk.itu.smdp.model.answer;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import dk.itu.smdp.R;

/**
 * Created by centos on 4/13/14.
 */
public class UserInputAnswer extends Answer{
    public UserInputAnswer(String _description) {
        super(_description);
    }

    @Override
    public View getView(Context context, ViewGroup parent) {

        LayoutInflater inflater = (LayoutInflater)context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);

        LinearLayout layout = (LinearLayout) inflater.inflate(R.layout.user_input_field , parent , false);

        RadioButton button = (RadioButton) layout.findViewById(R.id.user_input_field_radiobutton);
        button.setText(_description);

        return layout;
    }
}