# Important one-time API URL check

The upstream repository README documents `REACT_APP_BACKEND_URL=http://localhost:3001`.
Before applying, inspect the exact checked-out source:
```bash
git clone https://github.com/UnpredictablePrashant/TravelMemory.git
grep -R "REACT_APP_BACKEND_URL\\|baseUrl\\|/trip" -n TravelMemory/frontend/src
grep -n "app\\|router\\|trip" TravelMemory/backend/index.js
```
This deployment assumes the frontend honors `REACT_APP_BACKEND_URL` and makes requests under `/api/` or `/trip`. If it hard-codes `http://localhost:3001`, update the source URL helper to use `process.env.REACT_APP_BACKEND_URL` and rebuild. If the API path is `/trip`, configure the frontend base URL as an empty string or `/` and retain the Nginx `/trip` proxy. Verify the real route definitions before relying on CRUD testing; the upstream repository can change.
