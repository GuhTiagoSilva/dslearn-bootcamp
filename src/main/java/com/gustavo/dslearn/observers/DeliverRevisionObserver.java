package com.gustavo.dslearn.observers;

import com.gustavo.dslearn.entities.Deliver;

public interface DeliverRevisionObserver {
	
	void onSaveRevision(Deliver deliver);
	
}
