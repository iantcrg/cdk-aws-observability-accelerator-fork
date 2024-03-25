import ExistingEksOpenSourceobservabilityPattern from '../lib/existing-eks-opensource-observability-pattern';
import { configureApp, errorHandler } from '../lib/common/construct-utils';

const app = configureApp();

new ExistingEksOpenSourceobservabilityPattern().buildAsync(app, 'obs-nginx').catch((error) => {
    errorHandler(app, "Existing Cluster Pattern is missing information of existing cluster: " + error);
});