# frozen_string_literal: true
module KubernetesDeploy
  class ServiceAccount < KubernetesResource
    TIMEOUT = 30.seconds
    PREDEPLOY = true

    def status
      exists? ? "Created" : "Unknown"
    end

    def deploy_succeeded?
      exists?
    end

    def deploy_failed?
      false
    end

    def timeout_message
      UNUSUAL_FAILURE_MESSAGE
    end
  end
end
