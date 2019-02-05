module ProgramsHelper
  def determine_partial(program)
    case program.slug
    when 'kindergarten-first-grade' then 'kindergarten'
    when 'second-fourth-grade' then 'second'
    when 'fifth-eighth-grade' then 'fifth'
    when 'hs-core-program' then 'core'
    when 'hs-professional-training-program' then 'ptp'
    end
  end
end
