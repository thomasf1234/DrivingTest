package com.abstractx1.drivingtest;

/**
 * Created by tfisher on 20/08/2017.
 */

import android.app.Activity;
import android.os.Bundle;

public class MoveSpriteActivity extends Activity {
    /**
     * Called when the activity is first created.
     */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(new SceneView(this));
    }
}
